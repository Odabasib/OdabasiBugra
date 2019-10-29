SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_MiktarRevizeliDepoTransfer]
@pOlusturanKullanici int,
@pFaaliyet int,
@pIsemri int,
@PR_ID int output
as
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @tmOlusturma int;
declare @sSeri varchar(10);
declare @nNo int;
declare @pCikisDepo int;
declare @pGirisDepo int;
declare @ldMiktar decimal(22,6);

set @tmOlusturma=(select cast(replace(CONVERT(varchar(10),GETDATE(),108),':','') as int));
set @sSeri='DT';
set @nNo=(select nNo+1 from GUSTO00001.Seri where sSeri='DT' and nHareketTuru=4000);
set @pGirisDepo=2;
set @pCikisDepo=1;

declare @pStokKodu int;
declare @sIsemriSeriNo varchar(30);
declare @sAciklama varchar(50);

set @sAciklama=(select CONCAT(sIsEmriSeri,' - ',nIsEmriNo,' Depo Transfer Hareketi') from GUSTO00001.IsEmri where IsEmri_rowid=@pIsemri);

--DepoHareketBaslik Insert Step-1
insert into GUSTO00001.DepoHareketBaslik (dtTarih,sSeri,lNo,pDepoGiris,pDepoCikis,sAciklama,cOnayDurumu,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values (cast(GETDATE() as date),@sSeri,@nNo,@pGirisDepo,@pCikisDepo,@sAciklama,'G',@pOlusturanKullanici,GETDATE(),@tmOlusturma);

declare @DepoHareketBaslik_Rowid int;

set @DepoHareketBaslik_Rowid=SCOPE_IDENTITY();

declare @ldIskontoTutar decimal(15,2);

DECLARE Miktar_Revizeli_Depo_Transfer CURSOR FOR

select pStokKodu,case when ldAnaDepoMiktari>0 and ldRevizeMiktar>ldAnaDepoMiktari then ldAnaDepoMiktari
when ldAnaDepoMiktari>0 and ldAnaDepoMiktari>ldRevizeMiktar then ldRevizeMiktar
when ldAnaDepoMiktari<0 or  ldAnaDepoMiktari=0 then ldRevizeMiktar
end from Gusto.BPMCG_KismiDepoTransferleri where PPARENT=
(select ROWID from Gusto.BPMFT_DEPOTRANSFERI where PFAALIYET=@pFaaliyet)


OPEN Miktar_Revizeli_Depo_Transfer
FETCH NEXT FROM Miktar_Revizeli_Depo_Transfer INTO @pStokKodu,@ldMiktar
WHILE @@FETCH_STATUS =0

BEGIN

if @@CURSOR_ROWS>0 begin

	-- Çıkış Depo Hareket Insert

	insert into GUSTO00001.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,pStokKodu,pIzlemeKodu,cKacinciBirim,ldMiktar1,pBaslik,pOlusturanKullanici,sAciklama) values 
	(@pCikisDepo,cast(GETDATE() as date),@sSeri,@nNo,'1',1,@pStokKodu,0,'1',@ldMiktar,@DepoHareketBaslik_Rowid,@pOlusturanKullanici,'');
	declare @CikisHareket_Rowid int;
	set @CikisHareket_Rowid=SCOPE_IDENTITY();

	-- Giriş Depo Hareket Insert

	insert into GUSTO00001.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,pStokKodu,pIzlemeKodu,cKacinciBirim,ldMiktar1,pBaslik,pOlusturanKullanici,sAciklama) values 
	(@pGirisDepo,cast(GETDATE() as date),@sSeri,@nNo,'0',1,@pStokKodu,0,'1',@ldMiktar,@DepoHareketBaslik_Rowid,@pOlusturanKullanici,'');
	declare @GirisHareket_Rowid int;
	set @GirisHareket_Rowid=SCOPE_IDENTITY();

	update GUSTO00001.DepoHareket set pKarsiHareket=@CikisHareket_Rowid where DepoHareket_rowid=@GirisHareket_Rowid;
	update GUSTO00001.DepoHareket set pKarsiHareket=@GirisHareket_Rowid where DepoHareket_rowid=@CikisHareket_Rowid;

	declare @pDepoMiktarStokGiren int;
	declare @pDepoMiktarStokCikan int;

	select @pDepoMiktarStokGiren=ISNULL(DepoStokMiktar_rowid,0) from Gusto00001.DepoStokMiktar  
	where ((pStokKodu=@pStokKodu AND pIzlemeKodu=0) 
	AND pDepoKodu=@pGirisDepo);

	if @pDepoMiktarStokGiren>0
	UPDATE Gusto00001.DepoStokMiktar 
	SET ldBirinciBirim=ldBirinciBirim+@ldMiktar WHERE DepoStokMiktar_rowid=@pDepoMiktarStokGiren
	else 
	INSERT INTO Gusto00001.DepoStokMiktar 
	(pDepoKodu,pStokKodu,ldBirinciBirim,ldIkinciBirim,ldUcuncuBirim,nEngelleUyarSerbest) 
	values (@pGirisDepo,@pStokKodu,@ldMiktar,0,0,'2');

			
	select @pDepoMiktarStokCikan=ISNULL(DepoStokMiktar_rowid,0) from Gusto00001.DepoStokMiktar  
	where ((pStokKodu=@pStokKodu AND pIzlemeKodu=0) 
	AND pDepoKodu=@pCikisDepo);
	--9
	if @pDepoMiktarStokCikan>0
	UPDATE Gusto00001.DepoStokMiktar SET ldBirinciBirim=ldBirinciBirim-@ldMiktar WHERE DepoStokMiktar_rowid=@pDepoMiktarStokCikan
	else 
	INSERT INTO Gusto00001.DepoStokMiktar (pDepoKodu,pStokKodu,ldBirinciBirim,ldIkinciBirim,ldUcuncuBirim,nEngelleUyarSerbest) 
	values (@pCikisDepo,@pStokKodu,-@ldMiktar,0,0,'2');
	--10
	DELETE  Gusto00001.DepoTrnsRezervBaglanti  where pDepoTransfer=@DepoHareketBaslik_Rowid;

end

else begin

	delete from GUSTO00001.DepoHareketBaslik where DepoHareketBaslik_rowid=@DepoHareketBaslik_Rowid;

end

FETCH NEXT FROM Miktar_Revizeli_Depo_Transfer INTO @pStokKodu,@ldMiktar
		
END

CLOSE Miktar_Revizeli_Depo_Transfer

DEALLOCATE Miktar_Revizeli_Depo_Transfer

if @@CURSOR_ROWS>0 begin

	update GUSTO00001.Seri set nNo=@nNo where sSeri='DT' and nHareketTuru=4000;

	if ((select COUNT(*) from Gusto.BPMCG_OlusanDepoTransferleri where bTransferTuru=1095 and
	pOlusanTransfer=@DepoHareketBaslik_Rowid and PPARENT=
	(select ROWID from Gusto.BPMFT_DEPOTRANSFERI where PFAALIYET=@pFaaliyet))=0) begin

	insert into Gusto.BPMCG_OlusanDepoTransferleri (PPARENT,pOlusanTransfer,bTransferTuru) values 
	((select ROWID from Gusto.BPMFT_DEPOTRANSFERI where PFAALIYET=@pFaaliyet),@DepoHareketBaslik_Rowid,1095);

	end


	set @PR_ID=@DepoHareketBaslik_Rowid;

end


COMMIT TRANSACTION
END TRY
BEGIN CATCH
DECLARE 
@ErrorMessage NVARCHAR(4000),
@ErrorSeverity INT,
@ErrorState INT;
SELECT 
@ErrorMessage = ERROR_MESSAGE(),
@ErrorSeverity = ERROR_SEVERITY(),
@ErrorState = ERROR_STATE();
RAISERROR (
@ErrorMessage,
@ErrorSeverity,
@ErrorState    
);
ROLLBACK TRANSACTION
END CATCH
GO