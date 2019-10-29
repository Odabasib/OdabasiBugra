SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00004].[DevirStokAktarim]
	@dtTarih smalldatetime,
	@sGirisSeri varchar(5),
	@nGirisNo int,
	@sBaslikAciklama varchar(120),
	@sStokKodu varchar(60),
	@sDepoKodu varchar(60),
	@sSatirAciklama varchar(60),
	@ldMiktar decimal(22,6),
	@nSira int,
	@pOlusturan int,
	
	@sBirimldFiyat varchar (60)
	
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
	
	DECLARE @pStokKodu int;
	DECLARE @pDepoKodu int;
	DECLARE @pDepoMaliyetKodu int;
	DECLARE @sSeri varchar(5);
	DECLARE @nNo int;
	DECLARE @nHareketTuru int;
	DECLARE @nIslemHareketTuru int;
	DECLARE @cGirisCikis varchar(1);
	DECLARE @StokhareketBaslik_Rowid int;
	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	DECLARE @ldMiktar2 decimal(22,6);
	DECLARE @ldMiktar3 decimal(22,6);
	DECLARE @sGirisCikis varchar(1);
	declare @BirimldFiyat decimal(22,6);
	

	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));
	set @BirimldFiyat = (select Cast(REPLACE('56,24',',','.') as decimal(22,6) ) );

	SET @pStokKodu = (SELECT StokKodu_rowid FROM GUSTO00004.StokKodu where sKod=@sStokKodu);
	SET @pDepoKodu = (SELECT DepoKodu_rowid FROM GUSTO00004.DepoKodu where sKod=@sDepoKodu);
	SET @pDepoMaliyetKodu = (SELECT pDepoMaliyetKodu FROM GUSTO00004.DepoKodu where sKod=@sDepoKodu)

	SET @ldMiktar2 = 0 ;
	
	/* ISNULL((SELECT CASE WHEN cIkinciBirimCarpanBolen='C' THEN @ldMiktar/ldIkinciBirimKatsayisi ELSE @ldMiktar*ldIkinciBirimKatsayisi END 
						FROM GUSTO00004.StokDetay WHERE pStokKodu=@pStokKodu
						AND sIkinciBirimAdi<>'' AND ldIkinciBirimKatsayisi>0),0);
	*/
	
	SET @ldMiktar3 = 0;
	/*
	ISNULL((SELECT CASE WHEN cUcuncuBirimCarpanBolen='C' THEN @ldMiktar/ldUcuncuBirimKatsayisi ELSE @ldMiktar*ldUcuncuBirimKatsayisi END 
						FROM GUSTO00004.StokDetay WHERE pStokKodu=@pStokKodu
						AND sUcuncuBirimAdi<>'' AND ldUcuncuBirimKatsayisi>0),0);

	*/

	SET @sSeri = @sGirisSeri;
	SET @nNo = @nGirisNo;
	SET @nHareketTuru = 108;
	SET @nIslemHareketTuru = 1108;
	SET @cGirisCikis ='0'


	


	SET @StokhareketBaslik_Rowid = ISNULL((SELECT StokhareketBaslik_Rowid FROM GUSTO00004.StokHareketBaslik
											WHERE nHareketTuru=@nHareketTuru
											AND sSeri = @sSeri
											AND lNo = @nNo),0);

	IF @StokhareketBaslik_Rowid = 0
	BEGIN
		
		DECLARE @IslemTablosu_Rowid int;
		INSERT INTO GUSTO00004.IslemTablosu 
		(nHareketTuru,dtTarih,pOlusturanKullanici,dtOlusturma,tmOlusturma,sBelgeSeri,lBelgeNo)
		VALUES
		(@nIslemHareketTuru,@dtTarih,@pOlusturan,@dtOlusturma,@tmOlusturma,@sSeri,@nNo)
		SET @IslemTablosu_Rowid = SCOPE_IDENTITY();

		INSERT INTO GUSTO00004.StokHareketBaslik
		(sSeri,lNo,dtTarih,nHareketTuru,cCariTuru,pCari,pIslemID,cSevkAdresiTuru,COnayDurumu,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		VALUES
		(@sSeri,@nNo,@dtTarih,@nHareketTuru,'C',0,@IslemTablosu_Rowid,'F','G',@pOlusturan,@dtOlusturma,@tmOlusturma)
		SET @StokhareketBaslik_Rowid = SCOPE_IDENTITY();

		INSERT INTO GUSTO00004.FaturaKDV (cBelgeTuru,pBaslik) VALUES ('SH',@StokhareketBaslik_Rowid);

		UPDATE GUSTO00004.Seri SET nNo=(SELECT MAX(lNo)+1 FROM GUSTO00004.StokHareketBaslik WHERE nHareketTuru=@nHareketTuru AND sSeri=@sSeri)
		WHERE nHareketTuru = @nHareketTuru and sSeri=@sSeri;
	END

	DECLARE @StokHareket_Rowid int;
	INSERT INTO GUSTO00004.StokHareket 
	(pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pDepoMaliyetKodu,cGirisCikis,nHareketTuru,ldBirimFiyatKDVsiz,
	cKacinciBirim,ldMalMiktari1Birim,ldMalMiktari2Birim,ldMalMiktari3Birim,dtTarih,nSira,pDepo,
	cCariTuru,pCari,pOlusturanKullanici,dtOlusturma,tmOlusturma,ldEndeks)
	VALUES
	(@StokhareketBaslik_Rowid,@sSeri,@nNo,'S',@pStokKodu,@pDepoMaliyetKodu,@cGirisCikis,@nHareketTuru,@BirimldFiyat,
	'1',@ldMiktar,@ldMiktar2,@ldMiktar3,@dtTarih,@nSira,@pDepoKodu,
	'C',0,@pOlusturan,@dtOlusturma,@tmOlusturma,1)
	SET @StokHareket_Rowid = SCOPE_IDENTITY();

	INSERT INTO GUSTO00004.StokHareketDetay (pStokHareket) VALUES (@StokHareket_Rowid); 

	DECLARE @DepoHareket_Rowid int;
	INSERT INTO GUSTO00004.DepoHareket 
	(pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,
	ldMiktar1,ldMiktar2,ldMiktar3,pOlusturanKullanici,dtOlusturma,tmOlusturma) 
	VALUES
	(@pDepoKodu,@dtTarih,@sSeri,@nNo,@cGirisCikis,@nSira,@nHareketTuru,@pStokKodu,1,
	@ldMiktar,@ldMiktar2,@ldMiktar3,@pOlusturan,@dtOlusturma,@tmOlusturma)
	SET @DepoHareket_Rowid = SCOPE_IDENTITY();

	DELETE FROM GUSTO00004.StokYuruyenMaliyet WHERE ((pStokHareket=@StokHareket_Rowid AND pIzlemeKodu=0) AND pDepoMaliyetKodu=0);
	DECLARE @StokYuruyenMaliyet_Rowid_Genel int;
	INSERT INTO GUSTO00004.StokYuruyenMaliyet 
	(pStokKarti,dtTarih,cGirisCikis,nSira,pStokHareket,pDepoMaliyetKodu) 
	VALUES
	(@pStokKodu,@dtTarih,@cGirisCikis,@nSira,@StokHareket_Rowid,0)
	SET @StokYuruyenMaliyet_Rowid_Genel = SCOPE_IDENTITY();

	DELETE FROM GUSTO00004.StokYuruyenMaliyet WHERE ((pStokHareket=@StokHareket_Rowid AND pIzlemeKodu=0) AND pDepoMaliyetKodu=@pDepoMaliyetKodu);
	DECLARE @StokYuruyenMaliyet_Rowid_Depo int;
	INSERT INTO GUSTO00004.StokYuruyenMaliyet 
	(pStokKarti,dtTarih,cGirisCikis,nSira,pStokHareket,pDepoMaliyetKodu) 
	VALUES
	(@pStokKodu,@dtTarih,@cGirisCikis,@nSira,@StokHareket_Rowid,@pDepoMaliyetKodu)
	SET @StokYuruyenMaliyet_Rowid_Depo = SCOPE_IDENTITY();

	UPDATE GUSTO00004.StokHareket SET
	pDepoHareket = @DepoHareket_Rowid,
	pYuruyenMaliyet = @StokYuruyenMaliyet_Rowid_Genel,
	pDepoMlytKoduYuruyenMaliyet = @StokYuruyenMaliyet_Rowid_Depo
	WHERE StokHareket_Rowid = @StokHareket_Rowid

	DELETE FROM GUSTO00004.DepoStokMiktar WHERE pStokKodu=@pStokKodu and pDepoKodu=@pDepoKodu
	INSERT INTO GUSTO00004.DepoStokMiktar
	(pDepoKodu,pStokKodu,ldBirinciBirim,ldIkinciBirim,ldUcuncuBirim)
	SELECT @pDepoKodu,@pStokKodu,
	SUM(CASE WHEN cGirisCikis='0' THEN ldMalMiktari1Birim else -ldMalMiktari1Birim END),
	SUM(CASE WHEN cGirisCikis='0' THEN ldMalMiktari2Birim else -ldMalMiktari2Birim END),
	SUM(CASE WHEN cGirisCikis='0' THEN ldMalMiktari3Birim else -ldMalMiktari3Birim END)
	FROM GUSTO00004.StokHareket 
	WHERE pStokKodu=@pStokKodu AND pDepo=@pDepoKodu

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