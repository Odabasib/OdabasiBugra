SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[CARIUPDATE] 
	@PKART int,
	@pDEGISTIREN int,
	@PR_ID int output
AS 

BEGIN TRY
	DECLARE @usp_GetErrorInfo varchar(100);

	SET @usp_GetErrorInfo = '1';

	DECLARE @dtDegistirme smalldatetime;
	DECLARE @tmDegistirme varchar(10);
	SET @dtDegistirme = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmDegistirme = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));

	SET @usp_GetErrorInfo = '2';

	DECLARE @sCariKodu varchar(41);
	DECLARE @MusteriSaticiKodu_Rowid int;
	
	SET @sCariKodu = (SELECT SKODU FROM Gusto.EPMKart WHERE EPMKART_ROWID=@PKART);
	SET @MusteriSaticiKodu_Rowid = ISNULL((SELECT MusteriSaticiKodu_rowid FROM GUSTO00001.MusteriSaticiKodu WHERE sKod=@sCariKodu),0); 
	

	SET @usp_GetErrorInfo = '3';

	UPDATE GUSTO00001.MusteriSaticiKodu SET
	sAd = SADI,
	pDegistirenKullanici = @pDEGISTIREN,
	dtDegistirme = @dtDegistirme,
	tmDegistirme = @tmDegistirme
	FROM GUSTO00001.MusteriSaticiKodu 
	INNER JOIN Gusto.BPMKT_CARI ON MusteriSaticiKodu_rowid=pGustoCari
	INNER JOIN Gusto.EPMKart ON PKART=EPMKART_ROWID
	WHERE EPMKART_ROWID=@PKART
	
	SET @usp_GetErrorInfo = '4';

	UPDATE GUSTO00001.MusteriSaticiDetayi SET
	sFaturaAdresi = UPPER(
					CASE SADRES when '' THEN '' ELSE SADRES+' ' END+
					CASE SSEMT WHEN '' THEN '' ELSE SSEMT+' ' END),
	sFaturaPostaKodu = sPostaKodu,
	sFaturaIlce = sIlce,
	sFaturaSehir = sSehirAdi,
	sFaturaUlke = sUlkeAdi,
	sTelefon1 = sTelefonI,
	sTelefon2 = sTelefonII,
	sTelefon3 = sTelefonIII,
	sFaks1 = sFaks,
	nVergiNoTuru = CASE WHEN pVergiTuru =13 then 0 else 1 END,
	sVergiDairesi = CASE WHEN pVergiTuru =13 then C.sVergiDairesi else '' END,
	sVergiNumarasi = CASE WHEN pVergiTuru =13 then C.sVergiNumarasi else sTCKimlikNo END,
	sEmail = C.sEMail,
	sWebAdresi = c.sWebAdresi,
	pAlanKoduFatura = SehirBilgi_rowid
	FROM GUSTO00001.MusteriSaticiDetayi 
	INNER JOIN GUSTO00001.MusteriSaticiKodu ON pMusteriSaticiKodu=MusteriSaticiKodu_rowid
	INNER JOIN Gusto.BPMKT_CARI C ON MusteriSaticiKodu_rowid=pGustoCari
	INNER JOIN Gusto.EPMKart ON PKART=EPMKART_ROWID
	LEFT OUTER JOIN Gusto.SehirBilgi ON pSehirUlke=SehirBilgi_rowid
		LEFT OUTER JOIN Gusto.UlkeBilgi ON pUlke=UlkeBilgi_rowid
	WHERE EPMKART_ROWID=@PKART

	SET @usp_GetErrorInfo = '5';

	DELETE FROM GUSTO00001.OdemeKosullariCari WHERE pCari = @MusteriSaticiKodu_Rowid;

	INSERT INTO GUSTO00001.OdemeKosullariCari
	(pOdemeKosulu,cTur,pCari)
	SELECT pOdemeKosulu,'C',@MusteriSaticiKodu_Rowid
	FROM Gusto.EPMKart
	INNER JOIN Gusto.BPMKT_CARI ON PKART=EPMKART_ROWID
	LEFT OUTER JOIN Gusto.SehirBilgi ON pSehirUlke=SehirBilgi_rowid
	LEFT OUTER JOIN Gusto.UlkeBilgi ON pUlke=UlkeBilgi_rowid
	WHERE EPMKART_ROWID=@PKART

	UPDATE GUSTO00001.HesapKodu SET
	sAd = B.sAd,
	pDegistirenKullanici = @pDEGISTIREN,
	dtDegistirme = @dtDegistirme,
	tmDegistirme = @tmDegistirme
	FROM GUSTO00001.HesapKodu A
	INNER JOIN GUSTO00001.MusteriSaticiKodu B ON A.sKod=B.sKod
	WHERE B.MusteriSaticiKodu_rowid = @MusteriSaticiKodu_Rowid

	SET @PR_ID = @MusteriSaticiKodu_Rowid;
END TRY
BEGIN CATCH
EXECUTE @usp_GetErrorInfo;
END CATCH
GO