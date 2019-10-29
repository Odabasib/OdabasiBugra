SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00005].[SayimFarkiGuncel_Giris]
  @sStokKodu varchar (200),
  @sMiktar varchar(100),
  @sBirimFiyat varchar(100),
  
	@Calistir varchar(1)
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
	declare @ldBirimFiyat decimal (22,6);
	declare @ldHareketMiktar decimal(22,6);

	set @pStokKodu = (select isnull(StokKodu_rowid,0) from GUSTO00005.StokKodu where sKod = @sStokKodu);


if (@pStokKodu>0)
begin

	set @pDepoKodu = 2;
	set @pDepomaliyetKodu = 1;
	set @ldHareketMiktar = (select cast(replace(@sMiktar,',','.') as decimal (22,6)));
	set @ldBirimFiyat = (select cast(replace(@sBirimFiyat,',','.') as decimal (22,6)));


	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));


		DECLARE @sSeri varchar(5);
		DECLARE @nNo int;
		DECLARE @nHareketTuru int;
		DECLARE @cGirisCikis varchar(1);
		DECLARE @StokhareketBaslik_Rowid int;
		declare @StokHareket_Rowid int;
		declare @pDepoHareket int;
		declare @dtTarih  date;

		select 
		@StokhareketBaslik_Rowid=StokHareketBaslik_rowid,
		@nHareketTuru = nHareketTuru,
		@cGirisCikis = '0',
		@sSeri = sSeri,
		@nNo = lNo,
		@dtTarih = dtTarih
		from Gusto00005.StokHareketBaslik where sSeri = 'SFG' and lNo = 4
		
		

		INSERT  into Gusto00005.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira)
		values (GETDATE(),'S',@pStokKodu,1)

		INSERT into Gusto00005.StokHareket (pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pDepoMaliyetKodu,cGirisCikis,nHareketTuru,cKacinciBirim,
		ldMalMiktari1Birim,ldBirimFiyatKDVsiz,dtTarih,nSira,pDepo,cCariTuru,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@StokhareketBaslik_Rowid,@sSeri,@nNo,'S',@pStokKodu,@pDepomaliyetKodu,@cGirisCikis,@nHareketTuru,'1',
		@ldHareketMiktar,@ldBirimFiyat,@dtTarih,1,@pDepoKodu,'C',1,@dtOlusturma,@tmOlusturma)
		set @StokHareket_Rowid = SCOPE_IDENTITY()

		INSERT into Gusto00005.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid)


		INSERT Gusto00005.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@pDepoKodu,GETDATE(),@sSeri,@nNo,@cGirisCikis,1,@nHareketTuru,@pStokKodu,'1',@ldHareketMiktar,1,@dtOlusturma,@tmOlusturma)
		set @pDepoHareket =SCOPE_IDENTITY()

		declare @bDepoStokKontrol int ;
		set @bDepoStokKontrol = (select count(*) from Gusto00005.DepoStokMiktar where pStokKodu =@pStokKodu);
		if (@bDepoStokKontrol=0)
		begin
			insert into Gusto00005.DepoStokMiktar 
			(pDepoKodu,pStokKodu,pIzlemeKodu,ldBirinciBirim,ldIkinciBirim,ldUcuncuBirim,ldRezerveEdilmisMiktar1,ldRezerveEdilmisMiktar2,ldRezerveEdilmisMiktar3,nEngelleUyarSerbest)
			values
			(@pDepoKodu,@pStokKodu,0,@ldHareketMiktar,0,0,0,0,0,0)
		end
		else
		begin
			UPDATE Gusto00005.DepoStokMiktar set ldBirinciBirim=@ldHareketMiktar where pDepoKodu = @pDepoKodu and @pStokKodu = pStokKodu
		end


		UPDATE Gusto00005.StokHareket 
		set pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,cGirisCikis=@cGirisCikis,
		nHareketTuru=@nHareketTuru,cKacinciBirim='1',
		ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=getdate(),nSira=1,pDepo=@pDepoKodu,cCariTuru='C',cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokhareketBaslik_Rowid


		UPDATE Gusto00005.StokHareket set 
		pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,
		cGirisCikis=@cGirisCikis,nHareketTuru=@nHareketTuru,cKacinciBirim='1',ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=GETDATE(),
		nSira=1,pDepo=@pDepoKodu,cCariTuru='C',cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokHareket_Rowid

		INSERT Gusto00005.FaturaKDV (cBelgeTuru,pBaslik) values ('SH',@StokhareketBaslik_Rowid)
		UPDATE Gusto00005.StokDetay 
		set ldBirinciBirim=@ldHareketMiktar where pStokKodu = @pStokKodu

	end
	else
	begin
		
		insert into  Gusto00005.T_ProsedürHataliStoklar (sStokKodu) values (@sStokKodu)

	end 

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