SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_SabitKAktarim]
	 
	  @IzlemeKodu varchar(20),
	  @sAD varchar(200),
	  @dtAlisTarihi date,
	--  @sAmortismanSekli varchar (60),
	  @nAmortismanKalanYil int,
      @nAmortismanSuresi int,
	  @ldAmortismanOrani decimal(22,6),
	  @ldBirimFiyat decimal(22,6),
	  @ldAlisTutari decimal(22,6),
	  @ldSonDeger decimal (22,6),
	  @ldBirikmisAmort decimal(22,6),
	  @ldSonNetDeger decimal(22,6),
	  --@ldAlisKdvTutari decimal(22,6),
	  @Tur int
       

AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
       declare @pSabitKodu int;



	   set @pSabitKodu = (select SabitKKodu_rowid from GUSTO00001.SabitKKodu where sKod = left(@IzlemeKodu,6))

	   declare @SabitKIzlemeKodu_rowid int;
	   insert into GUSTO00001.SabitKIzlemeKodu(pSabitKKodu,sKod,sAd,pOlusturanKullanici,dtOlusturma) values
	   (@pSabitKodu,@IzlemeKodu,@sAD,1,GETDATE())
	   	   
	   SET @SabitKIzlemeKodu_rowid = SCOPE_IDENTITY();
	   
	   declare @SabitKIzlemeDetay_rowid int;
	   
		INSERT Gusto00001.SabitKIzlemeDetay (pIzlemeKodu,pSabitKymTurleri,nAmortismanSuresi,nAmortismanKalanYil,ldAmortismanOrani,
		ldDevredenSonDegeri,ldDevredenAmortismanDegeri,ldDevredenSonNetDeger,
		ldSonDeger,ldBirikmisAmortisman,ldSonNetDeger,dtAlinisTarihi,ldAlinisFiyati,bDevreden)
		values
		(@SabitKIzlemeKodu_rowid,@Tur,@nAmortismanSuresi,@nAmortismanKalanYil,@ldAmortismanOrani,
		@ldSonDeger,@ldBirikmisAmort,@ldSonNetDeger,
		@ldSonDeger,@ldBirikmisAmort,@ldSonNetDeger,@dtAlisTarihi,@ldBirimFiyat,1)

		SET @SabitKIzlemeDetay_rowid = SCOPE_IDENTITY();

		update GUSTO00001.SabitKIzlemeKodu set pDetay = @SabitKIzlemeDetay_rowid where SabitKIzlemeKodu_rowid = @SabitKIzlemeKodu_rowid

		declare @SabitKIzlemeDetayDevam_rowid int;
		
		insert Gusto00001.SabitKIzlemeDetayDevam (ldypTpAlimIadesi) values (0)
		
		SET @SabitKIzlemeDetayDevam_rowid = SCOPE_IDENTITY();


		declare @SabitKIzlemeDetayDevam1_rowid int;
		insert Gusto00001.SabitKIzlemeDetayDevam1 (ldDTpAlimIadesi) values (0)
		SET @SabitKIzlemeDetayDevam1_rowid = SCOPE_IDENTITY();

		INSERT SabitKIzlemeDetayTFRS (pIzlemeKodu,pSabitKymTurleri,nAmortismanSuresi,ldAmortismanOrani,ldDevredenSonDegeri,
		ldDevredenAmortismanDegeri,ldDevredenSonNetDeger,ldSonDeger,
		ldBirikmisAmortisman,ldSonNetDeger,dtAlinisTarihi,ldAlinisFiyati,bDevreden)
		values
		(@SabitKIzlemeKodu_rowid,@Tur,@nAmortismanSuresi,@ldAmortismanOrani,
		@ldSonDeger,@ldBirikmisAmort,@ldSonNetDeger,
		@ldSonDeger,@ldBirikmisAmort,@ldSonNetDeger,@dtAlisTarihi,@ldBirimFiyat,1)

		update Gusto00001.SabitKIzlemeDetay set pIzlemeDetayDevami=@SabitKIzlemeDetayDevam_rowid,pIzlemeDetayDevami1=@SabitKIzlemeDetayDevam1_rowid
		where SabitKIzlemeDetay_rowid =@SabitKIzlemeDetay_rowid

       
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