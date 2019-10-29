SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[SayimFarkiGuncel]
  @Calistir varchar (1)
	
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;


if (@Calistir='1')
begin
	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	declare @pStokKodu int;
	declare @pDepoKodu int;
	declare @pDepomaliyetKodu int;
	declare @ldDepodakiMiktar decimal(22,6);
	declare @ldHareketMiktar decimal(22,6);
	declare @Tur varchar(10); 
	declare @ldSuankiMiktar decimal(22,6)
	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));


	declare  Sayim CURSOR FOR
	select
	pStokKodu,
	pDepoKodu,
	ldBirinciBirim,
	case when (ldBirinciBirim-sayimMiktar) >0 then (ldBirinciBirim-sayimMiktar) else -1*(ldBirinciBirim-sayimMiktar) end Hareketmiktar,
	sayimMiktar,
	case when ldBirinciBirim>sayimMiktar then 'SFC' else 'SFG' end 'Tur',
	3
	from GUSTO00001.V_SayimMiktarlari where ldBirinciBirim !=sayimMiktar

	open Sayim
	fetch next from sayim into @pStokKodu,@pDepoKodu,@ldDepodakiMiktar,@ldHareketMiktar,@ldSuankiMiktar,@Tur,@pDepomaliyetKodu
	
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

		if (@Tur='SFG')
		begin
			select 
			@StokhareketBaslik_Rowid=StokHareketBaslik_rowid,
			@nHareketTuru = nHareketTuru,
			@cGirisCikis = '0',
			@sSeri = sSeri,
			@nNo = lNo
			from GUSTO00001.StokHareketBaslik where sSeri = 'SFG' and lNo = 11
		end
		else
			begin
			select 
			@StokhareketBaslik_Rowid=StokHareketBaslik_rowid,
			@nHareketTuru = nHareketTuru,
			@cGirisCikis = '1',
			@sSeri = sSeri,
			@nNo = lNo
			 from GUSTO00001.StokHareketBaslik where sSeri = 'SFC' and lNo = 17
		end

		INSERT  into Gusto00001.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira)
		values (GETDATE(),'S',@pStokKodu,1)

		INSERT into Gusto00001.StokHareket (pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pDepoMaliyetKodu,cGirisCikis,nHareketTuru,cKacinciBirim,
		ldMalMiktari1Birim,dtTarih,nSira,pDepo,cCariTuru,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@StokhareketBaslik_Rowid,@sSeri,@nNo,'S',@pStokKodu,@pDepomaliyetKodu,@cGirisCikis,@nHareketTuru,'1',
		@ldHareketMiktar,GETDATE(),1,@pDepoKodu,'C',1,@dtOlusturma,@tmOlusturma)
		set @StokHareket_Rowid = SCOPE_IDENTITY()

		INSERT into Gusto00001.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid)

		delete from GUSTO00001.StokYuruyenMaliyet where ((pStokHareket=@StokHareket_Rowid AND pIzlemeKodu=0) AND pDepoMaliyetKodu=0)

		INSERT Gusto00001.StokYuruyenMaliyet (pStokKarti,dtTarih,cGirisCikis,nSira,pStokHareket)
		values
		(@pStokKodu,GETDATE(),@cGirisCikis,1,@StokHareket_Rowid)
		set @pStokYuruyenMaliyet = SCOPE_IDENTITY()

		delete from GUSTO00001.StokYuruyenMaliyet where ((pStokHareket=@pStokKodu AND pIzlemeKodu=0) AND pDepoMaliyetKodu=@pDepomaliyetKodu)

		INSERT Gusto00001.StokYuruyenMaliyet (pStokKarti,pDepoMaliyetKodu,dtTarih,cGirisCikis,nSira,pStokHareket)
		values
		(@pStokKodu,@pDepomaliyetKodu,GETDATE(),@cGirisCikis,1,@StokHareket_Rowid)
		set @pStokYuruyenMaliyetDepo = SCOPE_IDENTITY()

		INSERT Gusto00001.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@pDepoKodu,GETDATE(),@sSeri,@nNo,@cGirisCikis,1,@nHareketTuru,@pStokKodu,'1',@ldHareketMiktar,1,@dtOlusturma,@tmOlusturma)
		set @pDepoHareket =SCOPE_IDENTITY()

		UPDATE Gusto00001.DepoStokMiktar set ldBirinciBirim=@ldSuankiMiktar where pDepoKodu = @pDepoKodu and @pStokKodu = pStokKodu

		UPDATE Gusto00001.StokHareket 
		set pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,cGirisCikis=@cGirisCikis,
		nHareketTuru=@nHareketTuru,cKacinciBirim='1',
		ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=getdate(),nSira=1,pDepo=@pDepoKodu,cCariTuru='C',pYuruyenMaliyet=@pStokYuruyenMaliyet,
		pDepoMlytKoduYuruyenMaliyet=@pStokYuruyenMaliyetDepo,cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokhareketBaslik_Rowid

		UPDATE Gusto00001.StokYuruyenMaliyet 
		set ldStoktakiMiktar=@ldDepodakiMiktar,ldStokYuruyenMiktar1=@ldDepodakiMiktar 
		where StokYuruyenMaliyet_rowid = @pStokYuruyenMaliyet

		UPDATE Gusto00001.StokYuruyenMaliyet 
		set ldStoktakiMiktar=@ldDepodakiMiktar,ldStokYuruyenMiktar1=@ldDepodakiMiktar 
		where StokYuruyenMaliyet_rowid = @pStokYuruyenMaliyetDepo

		UPDATE Gusto00001.StokHareket set 
		pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,
		cGirisCikis=@cGirisCikis,nHareketTuru=@nHareketTuru,cKacinciBirim='1',ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=GETDATE(),
		nSira=1,pDepo=@pDepoKodu,cCariTuru='C',pYuruyenMaliyet=@pStokYuruyenMaliyet,pDepoMlytKoduYuruyenMaliyet=@pStokYuruyenMaliyetDepo,cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokHareket_Rowid

		INSERT Gusto00001.FaturaKDV (cBelgeTuru,pBaslik) values ('SH',@StokhareketBaslik_Rowid)
		UPDATE Gusto00001.StokDetay 
		set ldBirinciBirim=@ldSuankiMiktar where pStokKodu = @pStokKodu

	fetch next from sayim into @pStokKodu,@pDepoKodu,@ldDepodakiMiktar,@ldHareketMiktar,@ldSuankiMiktar,@Tur,@pDepomaliyetKodu
	
	end

	close sayim

	deallocate sayim

end

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