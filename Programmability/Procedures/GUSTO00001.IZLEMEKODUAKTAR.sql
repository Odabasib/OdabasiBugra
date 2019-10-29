SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[IZLEMEKODUAKTAR] 
	@Rowid int,
	@pStokKodu int,
	@pOlusturan int,
	@PR_ID int OUTPUT
AS

BEGIN TRY
	DECLARE @usp_GetErrorInfo varchar(100);
	SET @usp_GetErrorInfo = '1';

	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);

	SET @dtOlusturma = (SELECT CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (SELECT REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));

	SET @usp_GetErrorInfo = '2';

	DECLARE @sKod varchar(41);
	DECLARE @sAd varchar(255);

	SET @sKod = (SELECT ' '+LEFT(ISNULL((select COALESCE(ISNULL(D.sAciklama,A.pDinamikOzellik),'')+' ' FROM
					(
						SELECT *,CASE WHEN AyrilmisMetin LIKE '9%' then REPLACE(SUBSTRING(AyrilmisMetin,7,5),')','') 
									  WHEN AyrilmisMetin LIKE '8%' then REPLACE(SUBSTRING(AyrilmisMetin,5,5),')','') 
									  ELSE REPLACE(SUBSTRING(AyrilmisMetin,3,5),')','') 
								 END pDinamikOzellik
						FROM Gusto.MetinParcala((SELECT SUBSTRING(sFormul,2,500) from GUSTO00001.StokKodu SK
												 INNER JOIN GUSTO00001.DynKodFormulBaslik DB ON SK.StokKodu_Rowid=DB.pStokKodu
												 INNER JOIN GUSTO00001.DynKodFormulSatir DS ON DB.DynKodFormulBaslik_rowid=DS.pBaslik
												 WHERE SK.nChildCount=0 
												 AND SK.StokKodu_rowid=@pStokKodu
												 AND DB.bKod=1),'@')
					) A
					LEFT OUTER JOIN Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK B ON CASE WHEN A.pDinamikOzellik IN ('/','x','X') THEN 0 ELSE A.pDinamikOzellik END = B.pDinOzellik AND PPARENT=@Rowid
					LEFT OUTER JOIN GUSTO00001.DinamikKodTanimi C ON B.pDinOzellik=C.DinamikKodTanimi_rowid
					LEFT OUTER JOIN GUSTO00001.DinamikKodDegerleri D ON B.pDinamikDeger=D.DinamikKodDegerleri_rowid
					ORDER BY A.ID
					FOR XML PATH ('')),''),39) sKod);

	SET @usp_GetErrorInfo = '3';

	SET @sAd = (SELECT LEFT(ISNULL((SELECT COALESCE(ISNULL(D.sDeger,A.pDinamikOzellik),'') FROM
					(
						SELECT *,CASE WHEN AyrilmisMetin LIKE '9%' THEN REPLACE(SUBSTRING(AyrilmisMetin,7,5),')','') 
									  WHEN AyrilmisMetin like '8%' THEN REPLACE(SUBSTRING(AyrilmisMetin,5,5),')','') 
									  ELSE REPLACE(SUBSTRING(AyrilmisMetin,3,5),')','') 
								 END pDinamikOzellik
						FROM Gusto.MetinParcala((SELECT SUBSTRING(sFormul,2,500) FROM GUSTO00001.StokKodu SK
												 INNER JOIN GUSTO00001.DynKodFormulBaslik DB ON SK.StokKodu_Rowid=DB.pStokKodu
												 INNER JOIN GUSTO00001.DynKodFormulSatir DS ON DB.DynKodFormulBaslik_rowid=DS.pBaslik
												 WHERE SK.nChildCount=0 
												 AND SK.StokKodu_rowid=@pStokKodu
												 AND DB.bKod=0),'@')
					) A
					LEFT OUTER JOIN Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK B ON CASE WHEN A.pDinamikOzellik in ('/','x') THEN 0 ELSE A.pDinamikOzellik END = B.pDinOzellik AND PPARENT=@Rowid
					LEFT OUTER JOIN GUSTO00001.DinamikKodTanimi C ON B.pDinOzellik=C.DinamikKodTanimi_rowid
					LEFT OUTER JOIN GUSTO00001.DinamikKodDegerleri D ON B.pDinamikDeger=D.DinamikKodDegerleri_rowid
					ORDER BY A.ID
					FOR XML PATH ('')),''),255) sAd);
	
	SET @usp_GetErrorInfo = '4';

	DECLARE @IzlemeKodu_Rowid int;

	SET @IzlemeKodu_Rowid = ISNULL((SELECT IzlemeKodu_rowid FROM GUSTO00001.IzlemeKodu WHERE sKod = @sKod),0);

	IF @IzlemeKodu_Rowid = 0
	BEGIN
		
		SET @usp_GetErrorInfo = '5';

		INSERT INTO GUSTO00001.IzlemeKodu
		(cStokDemirbas,pStokKodu,sKod,sAd,pDetay,pRevizyon,cStoktaVarMi,pUstKod,bPasifMi,nChildCount,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		VALUES
		('S',@pStokKodu,@sKod,@sAd,0,0,'H',0,0,0,@pOlusturan,@dtOlusturma,@tmOlusturma)

		SET @IzlemeKodu_Rowid = SCOPE_IDENTITY();
	
		SET @usp_GetErrorInfo = '6';

		DECLARE @IzlemeDetay_Rowid int;

		INSERT INTO GUSTO00001.IzlemeDetay
		(pIzlemeKodu,pIzlemeDetayDevami,pIzlemeDetayDevami1,pIzlemeDetayDevami2)
		VALUES
		(@IzlemeKodu_Rowid,0,0,0)

		SET @IzlemeDetay_Rowid = SCOPE_IDENTITY();

		SET @usp_GetErrorInfo = '7';

		UPDATE GUSTO00001.IzlemeKodu SET pDetay=@IzlemeDetay_Rowid WHERE IzlemeKodu_rowid=@IzlemeKodu_Rowid;

		SET @usp_GetErrorInfo = '8';

		INSERT INTO GUSTO00001.StokDinamikDeger
		(pIzlemeKodu,pStokDinamikOzellik,pDinamikDeger)
		SELECT @IzlemeKodu_Rowid,pDinOzellik,pDinamikDeger
		FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK
		WHERE PPARENT=@Rowid;

	END
	SET @PR_ID = @IzlemeKodu_Rowid;

END TRY
BEGIN CATCH
EXECUTE @usp_GetErrorInfo;
END CATCH
GO