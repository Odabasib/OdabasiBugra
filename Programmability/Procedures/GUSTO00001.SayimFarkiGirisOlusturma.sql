SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[SayimFarkiGirisOlusturma]
@pDepo int
	
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;


	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	declare @pStokKodu int;
	declare @pDepoKodu int;
	declare @pDepomaliyetKodu int;
	declare @ldBirinciBirim decimal(22,6);
	declare @ldIkinciBirim decimal(22,6);
	declare @ldUcuncuBirim decimal(22,6);
	--declare @Tur varchar(10); 

	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));

	declare  Sayim CURSOR FOR
	select pStokKodu,isnull(-ldBirinciBirim,0),isnull(-ldIkinciBirim,0),isnull(-ldUcuncuBirim,0) from GUSTO00001.DepoStokMiktar where (ldBirinciBirim<0 or ldIkinciBirim<0 or 
	ldUcuncuBirim<0) and pDepoKodu=@pDepo and exists (select * from GUSTO00001.StokKodu where StokKodu_rowid=pStokKodu);

	open Sayim
	fetch next from sayim into @pStokKodu,@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim
	
	while @@FETCH_STATUS = 0

	begin

		DECLARE @sSeri varchar(5);
		DECLARE @nNo int;
		DECLARE @nHareketTuru int;
		DECLARE @cGirisCikis varchar(1);
		DECLARE @StokhareketBaslik_Rowid int;
		declare @StokHareket_Rowid int;
		declare @pDepoHareket int;
		declare @pStokYuruyenMaliyet int;
		declare @pStokYuruyenMaliyetDepo int;
		declare @sAciklama varchar(255);

		
		--(select * 
		--from GUSTO00001.StokHareketBaslik where sSeri='SFG' and lNo=19);

		(select @StokhareketBaslik_Rowid=StokHareketBaslik_rowid,@sSeri=sSeri,@nNo=lNo,@nHareketTuru=nHareketTuru,@sAciklama=sAciklama
		from GUSTO00001.StokHareketBaslik where sSeri='SFG' and lNo=19);

		set @pDepomaliyetKodu=(select pDepoMaliyetKodu from GUSTO00001.DepoKodu where DepoKodu_rowid=@pDepo);


		INSERT  into Gusto00001.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira)
		values (GETDATE(),'S',@pStokKodu,1)

		INSERT into Gusto00001.StokHareket (pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pDepoMaliyetKodu,cGirisCikis,nHareketTuru,cKacinciBirim,
		ldMalMiktari1Birim,ldMalMiktari2Birim,ldMalMiktari3Birim,dtTarih,nSira,pDepo,cCariTuru,pOlusturanKullanici,dtOlusturma,tmOlusturma,sAciklama)
		values
		(@StokhareketBaslik_Rowid,@sSeri,@nNo,'S',@pStokKodu,@pDepomaliyetKodu,'0',@nHareketTuru,'1',
		@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim,GETDATE(),1,@pDepo,'C',1,@dtOlusturma,@tmOlusturma,@sAciklama)

		set @StokHareket_Rowid = SCOPE_IDENTITY()

		INSERT into Gusto00001.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid)


		INSERT Gusto00001.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,ldMiktar2,ldMiktar3,pOlusturanKullanici,dtOlusturma,tmOlusturma,sAciklama)
		values
		(@pDepo,GETDATE(),@sSeri,@nNo,'0',1,@nHareketTuru,@pStokKodu,'1',@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim,1,@dtOlusturma,@tmOlusturma,@sAciklama)
		set @pDepoHareket =SCOPE_IDENTITY()

		UPDATE Gusto00001.StokHareket 
		set pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,cGirisCikis='0',
		nHareketTuru=@nHareketTuru,cKacinciBirim='1',
		dtTarih=getdate(),nSira=1,pDepo=@pDepo,cCariTuru='C',--pYuruyenMaliyet=@pStokYuruyenMaliyet,
		--pDepoMlytKoduYuruyenMaliyet=@pStokYuruyenMaliyetDepo,
		cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL,sAciklama=@sAciklama
		where StokHareket_rowid = @StokHareket_Rowid;

		--UPDATE Gusto00001.DepoStokMiktar set ldBirinciBirim=0,ldIkinciBirim=0,ldUcuncuBirim=0,ldRezerveEdilmisMiktar1=0,ldRezerveEdilmisMiktar2=0,ldRezerveEdilmisMiktar3=0 where pDepoKodu = @pDepo and @pStokKodu = pStokKodu;

	fetch next from sayim into @pStokKodu,@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim
	
	end

	close sayim

	deallocate sayim



COMMIT TRANSACTION
END TRY
BEGIN CATCH

DECLARE 
@ErrorMessage Nvarchar(4000),
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