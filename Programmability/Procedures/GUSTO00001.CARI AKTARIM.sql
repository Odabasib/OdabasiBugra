SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[CARI AKTARIM] 
	@PKART int,
	@pOLUSTURAN int,
	@PR_ID int output
AS 

BEGIN TRY
	DECLARE @usp_GetErrorInfo varchar(100);

	SET @usp_GetErrorInfo = '1';

	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));

	SET @usp_GetErrorInfo = '2';

	DECLARE @sCariKodu varchar(41);
	DECLARE @MusteriSaticiKodu_Rowid int;
	
	SET @sCariKodu = (SELECT SKODU FROM Gusto.EPMKart WHERE EPMKART_ROWID=@PKART);
	SET @MusteriSaticiKodu_Rowid = ISNULL((SELECT MusteriSaticiKodu_rowid FROM GUSTO00001.MusteriSaticiKodu WHERE sKod=@sCariKodu),0); 
	SET @dtOlusturma = (SELECT CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));

	SET @usp_GetErrorInfo = '3';

	IF @MusteriSaticiKodu_Rowid = 0
	BEGIN
		SET @usp_GetErrorInfo = '4';

		--Müşteri Satıcı Kartı Aktarımı
		INSERT INTO GUSTO00001.MusteriSaticiKodu 
		(sKod,sAd,pMusteriSaticiDetayi,pUstKod,nChildCount,bPasifMi,pDoviz,pOlusturanKullanici,dtOlusturma,tmOlusturma,SubeKodu)
		SELECT SKODU,SADI,0,pUstGrup,0,0,pDoviz,@pOLUSTURAN,@dtOlusturma,@tmOlusturma,0 
		FROM Gusto.EPMKart
		INNER JOIN Gusto.BPMKT_CARI ON PKART=EPMKART_ROWID
		WHERE EPMKART_ROWID=@PKART

		SET @MusteriSaticiKodu_Rowid = SCOPE_IDENTITY();

		SET @usp_GetErrorInfo = '5';

		UPDATE GUSTO00001.MusteriSaticiKodu SET nChildCount=nChildCount+1 WHERE sKod=LEFT(@sCariKodu,6);

		SET @usp_GetErrorInfo = '6';

		DECLARE @MusteriSaticiDetayi_Rowid int;

		INSERT INTO GUSTO00001.MusteriSaticiDetayi
		(pMusteriSaticiDetayDevami,pMusteriSaticiKodu,cBakiyeSekli,cBakiyeUyari,cRiskUyari,
		pDovizYeriAlacak,cKurTuruAlacak,pDovizYeriBorc,cKurTuruBorc,sFaturaAdresi,sFaturaPostaKodu,
		sFaturaIlce,sFaturaSehir,sFaturaUlke,sTelefon1,sTelefon2,sTelefon3,sFaks1,nVergiNoTuru,sVergiDairesi,sVergiNumarasi,
		sEmail,sWebAdresi,sPeriyodBorc,sPeriyodAlacak,cNakitOdeme,cCekleOdeme,cSenetleOdeme,
		cNakitTahsilat,cCekleTahsilat,cSenetleTahsilat,nFaturaVadeBorc,nFaturaVadeAlacak,pAlanKoduFatura)
		select 0,@MusteriSaticiKodu_Rowid,3,0,'S',1,1,1,1,
		UPPER(
			CASE SADRES when '' THEN '' ELSE SADRES+' ' END+
			CASE SSEMT WHEN '' THEN '' ELSE SSEMT+' ' END),
		sPostaKodu,sIlce,sSehirAdi,sUlkeAdi,sTelefonI,sTelefonII,sTelefonIII,sFaks,
		CASE WHEN pVergiTuru =13 then 0 else 1 END, 
		CASE WHEN pVergiTuru =13 then sVergiDairesi else '' END,
		CASE WHEN pVergiTuru =13 then sVergiNumarasi else sTCKimlikNo END,
		sEMail,sWebAdresi,'G','G','E','E','E','E','E','E',0,0,SehirBilgi_rowid
		FROM Gusto.EPMKart
		INNER JOIN Gusto.BPMKT_CARI ON PKART=EPMKART_ROWID
		LEFT OUTER JOIN Gusto.SehirBilgi ON pSehirUlke=SehirBilgi_rowid
		LEFT OUTER JOIN Gusto.UlkeBilgi ON pUlke=UlkeBilgi_rowid
		WHERE EPMKART_ROWID=@PKART
		
		SET @MusteriSaticiDetayi_Rowid = SCOPE_IDENTITY();

		SET @usp_GetErrorInfo = '7';

		UPDATE GUSTO00001.MusteriSaticiKodu SET pMusteriSaticiDetayi=@MusteriSaticiDetayi_Rowid
		WHERE MusteriSaticiKodu_rowid=@MusteriSaticiKodu_Rowid	

		SET @usp_GetErrorInfo = '8';

		DECLARE @MusteriSaticiDetayDevami_Rowid int;
	
		INSERT INTO GUSTO00001.MusteriSaticiDetayDevami 
		(pMusteriSaticiDetayi,ldRiskLimiti,cRiskBorcmu,cRiskDovizli,nRiskKriteri,cRiskKriteri,cRiskKriteriBakiye,
		cRiskLimitiArtiTeminatMektubu,cRiskLimitiArtiTeminatCeki,cRiskLimitiArtiTeminatSenedi)
		VALUES (@MusteriSaticiDetayi_Rowid,0,'H','H','',0,0,'H','H','H')
	
		SET @MusteriSaticiDetayDevami_Rowid = SCOPE_IDENTITY();

		SET @usp_GetErrorInfo = '9';
	
		UPDATE GUSTO00001.MusteriSaticiDetayi SET pMusteriSaticiDetayDevami=@MusteriSaticiDetayDevami_Rowid
		WHERE MusteriSaticiDetayi_rowid=@MusteriSaticiDetayi_Rowid

		INSERT INTO GUSTO00001.OdemeKosullariCari
		(pOdemeKosulu,cTur,pCari)
		SELECT pOdemeKosulu,'C',@MusteriSaticiKodu_Rowid
		FROM Gusto.EPMKart
		INNER JOIN Gusto.BPMKT_CARI ON PKART=EPMKART_ROWID
		LEFT OUTER JOIN Gusto.SehirBilgi ON pSehirUlke=SehirBilgi_rowid
		LEFT OUTER JOIN Gusto.UlkeBilgi ON pUlke=UlkeBilgi_rowid
		WHERE EPMKART_ROWID=@PKART

		--Hesap Kodu Aktarımı
		DECLARE @HesapKodu_Rowid int;
		SET @HesapKodu_Rowid = ISNULL((SELECT HesapKodu_Rowid FROM GUSTO00001.HesapKodu where sKod=@sCariKodu),0);

		IF @HesapKodu_Rowid=0
		BEGIN
			SET @usp_GetErrorInfo = '10';
			DECLARE @pUstKod int;
			SET @pUstKod = (SELECT HesapKodu_rowid FROM GUSTO00001.HesapKodu where sKod=LEFT(@sCariKodu,6));

			INSERT INTO GUSTO00001.HesapKodu
			(sKod,sAd,pHesapDetayi,pUstKod,nChildCount,bPasifMi,pDoviz,pOlusturanKullanici,dtOlusturma,tmOlusturma,SubeKodu)
			SELECT @sCariKodu,SADI,0,@pUstKod,0,0,0,@pOLUSTURAN,@dtOlusturma,@tmOlusturma,0 
			FROM Gusto.EPMKart
			INNER JOIN Gusto.BPMKT_CARI ON PKART=EPMKART_ROWID
			WHERE EPMKART_ROWID=@PKART

			SET @HesapKodu_Rowid = SCOPE_IDENTITY();

			SET @usp_GetErrorInfo = '11';

			UPDATE GUSTO00001.HesapKodu SET nChildCount=nChildCount+1 WHERE sKod=LEFT(@sCariKodu,6);

			SET @usp_GetErrorInfo = '12';

			DECLARE @HesapDetayi_Rowid int;
       
			INSERT INTO GUSTO00001.HesapDetayi
			(pHesapKodu,cBakiyeSekli,bBakiyeUyari,
			pDovizYeriAlacak,pDovizYeriBorc,cDovizTuruAlacak,cDovizTuruBorc,
			bParasal,nEntegrasyonKaydi)
			select HesapKodu_Rowid,3,0,0,0,1,1,1,2     
			from GUSTO00001.HesapKodu
			WHERE HesapKodu_rowid = @HesapKodu_Rowid

			SET @HesapDetayi_Rowid = SCOPE_IDENTITY();

			SET @usp_GetErrorInfo = '13';

			UPDATE GUSTO00001.HesapKodu SET pHesapDetayi=@HesapDetayi_Rowid
			WHERE HesapKodu_rowid = @HesapKodu_Rowid

			SET @usp_GetErrorInfo = '14';
		END
		-- Müşteri Satıcı Kartı - Hesap Planı Bağlantısı
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,1)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,11)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,2)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,3)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,4)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,5)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,6)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,7)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,8)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,10)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,13)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,14)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,15)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,16)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,88)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,17)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,18)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,19)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,20)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,22)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,25)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,26)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,27)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,28)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,87)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,29)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,30)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,31)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,32)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,37)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,38)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,39)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,40)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,41)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,42)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,43)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,44)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,45)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,46)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,47)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,48)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,49)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,50)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,51)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,52)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,53)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,54)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,55)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,56)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,57)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,58)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,59)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,60)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,69)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,61)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,62)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,63)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,64)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,65)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,67)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,66)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,68)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,84)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,85)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,86)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,99)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,100)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,101)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,102)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,103)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,104)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,105)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,106)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,107)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,108)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,109)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,110)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,111)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,112)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,113)
		INSERT INTO GUSTO00001.MSMuhasebeKodu (pMusteriSaticiKodu,pMuhasebeKodu,nMSMuhasebeKoduTanimi) VALUES (@MusteriSaticiKodu_Rowid,@HesapKodu_Rowid,114)

		SET @PR_ID = @MusteriSaticiKodu_Rowid
	END

END TRY
BEGIN CATCH
EXECUTE @usp_GetErrorInfo;
END CATCH
GO