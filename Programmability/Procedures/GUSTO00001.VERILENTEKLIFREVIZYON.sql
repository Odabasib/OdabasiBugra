SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[VERILENTEKLIFREVIZYON] 
	@pFaaliyet int,
	@pOlusturan int,
	@PR_ID int output
AS
begin tran
BEGIN TRY
	DECLARE @usp_GetErrorInfo varchar(100);
	SET @usp_GetErrorInfo = '1';

	DECLARE @pFaaliyetRev int;

	INSERT INTO Gusto.EPMFaaliyet
	(PFAALIYETTURU,BPLANLAMA,DTPLANSTART,DTPLANEND,DTSTART,DTEND,KONU,STIMERVALUE,DURUM,BTEKRARLANABILIR,
	PATAYAN,PKULLANICI,DTOLUSTURMA,PMUSTERI,PATAYANKULLANICI,POLUSTURAN,PDEGISTIREN,PFIRMA)
	SELECT PFAALIYETTURU,BPLANLAMA,GETDATE(),GETDATE(),GETDATE(),GETDATE(),KONU,STIMERVALUE,
	case when pDepOnay = 24 then 2 else DURUM end,BTEKRARLANABILIR,
	0,@pOlusturan,GETDATE(),PMUSTERI,0,@pOlusturan,0,PFIRMA
	FROM Gusto.EPMFaaliyet
	inner join Gusto.BPMFT_VERILENTEKLIF on EPMFAALIYET_ROWID = PFAALIYET
	WHERE EPMFAALIYET_ROWID=@pFaaliyet

	SET @pFaaliyetRev=SCOPE_IDENTITY();

	SET @PR_ID = @pFaaliyetRev;

	SET @usp_GetErrorInfo = '2';

	DECLARE @sTeklifNo varchar(20);
	
	SET @sTeklifNo = (SELECT CASE WHEN sTeklifNo like '%REV%' 
								  THEN LEFT(sTeklifNo,LEN(sTeklifNo)-2)+CASE WHEN LEN(CONVERT(int,RIGHT(sTeklifNo,2))+1)=1 
																			 THEN '0'+CONVERT(varchar(1),CONVERT(int,RIGHT(sTeklifNo,2))+1) 
																			 ELSE CONVERT(varchar(2),CONVERT(int,RIGHT(sTeklifNo,2))+1) END 
								  ELSE sTeklifNo+'-REV01' END
					FROM Gusto.BPMFT_VERILENTEKLIF A INNER JOIN
					(SELECT MAX(PFAALIYET) PFAALIYET FROM Gusto.BPMFT_VERILENTEKLIF WHERE sTeklifNo LIKE (SELECT sTeklifNo FROM Gusto.BPMFT_VERILENTEKLIF WHERE PFAALIYET=@pFaaliyet)+'%') B
					ON A.PFAALIYET=B.PFAALIYET);
	
	SET @usp_GetErrorInfo = '3';
	DECLARE @VerilenTeklif_Rowid int;
	
	INSERT INTO Gusto.BPMFT_VERILENTEKLIF
	(PFAALIYET,sTeklifNo,bYurtdisi,dtTerminTarihi,dtTarih,nTeklifSiraNo,pNakliyeTuru,pNavlunSekli,pCari,pMusteriKodu,pOdemeVadesi,
	pDoviz,pDoviz_DovizYeri,pDoviz_DovizTuru,pDoviz_KurTarihi,pDoviz_Kur,sRevNot,bDepYonOnaylayacakMi,bUstYonOnaylacakMi,
	pDepOnay,pUstOnay,pDepYoneticisi,pUstYonetim,bKaydedildi,AltStokListesi,pKaynak)
	SELECT @pFaaliyetRev,@sTeklifNo,bYurtdisi,dtTerminTarihi,dtTarih,nTeklifSiraNo,pNakliyeTuru,pNavlunSekli,pCari,pMusteriKodu,pOdemeVadesi,
	pDoviz,pDoviz_DovizYeri,pDoviz_DovizTuru,pDoviz_KurTarihi,pDoviz_Kur,'',bDepYonOnaylayacakMi,bUstYonOnaylacakMi,
	case when pDepOnay = 24 then 23 else pDepOnay end,case when pUstOnay = 27 then 26 else pUstOnay end,
	pDepYoneticisi,pUstYonetim,0,AltStokListesi, case when sTeklifNo like '%REV%' then pKaynak else @pFaaliyet end
	FROM Gusto.BPMFT_VERILENTEKLIF
	WHERE PFAALIYET=@pFaaliyet

	SET @VerilenTeklif_Rowid = SCOPE_IDENTITY();

	--TEKLIF SATIR DİNAMİK ÖZELLİK AKTAR
	DECLARE @CurrentRowID_TeklifSatir int;
	DECLARE @LastRowID_TeklifSatir int;

	SET @CurrentRowID_TeklifSatir = 0;
	SET @LastRowID_TeklifSatir = 0;

	SET @usp_GetErrorInfo = '4';

	SELECT TOP 1 @CurrentRowID_TeklifSatir = ROWID FROM Gusto.BPMCG_VTEKLIFSATIRLARI 
	WHERE ROWID > @LastRowID_TeklifSatir and PPARENT = (SELECT ROWID FROM Gusto.BPMFT_VERILENTEKLIF WHERE PFAALIYET=@pFaaliyet);

	WHILE @CurrentRowID_TeklifSatir is not null
	BEGIN
		
		SET @usp_GetErrorInfo = '5';
				
		DECLARE @VTeklifSatirlari_Rowid int;

		INSERT INTO Gusto.BPMCG_VTEKLIFSATIRLARI
		(PPARENT,pStokKodu,pIzlemeKodu,pDovizCG,pDovizCG_DovizTuru,pDovizCG_DovizYeri,pDovizCG_Kur,pDovizCG_KurTarihi,ldMktar,sBirim,
		ldBirimFiyat,ldBirimFiyat_Doviz,dtIstenenTarih,nTerminSuresi,nKDV,ldKDV,ldKDV_Doviz,ldToplamTutarKDVli,ldToplamTutarKDVli_Doviz,
		bIzlemeKoduOlusacakMi,bIzlemeKoduOlusturuldu,ldMaliyet,ldToplamEuro,COL_1267,pTeknikResim,bAtfVarMi)
		SELECT @VerilenTeklif_Rowid,pStokKodu,pIzlemeKodu,pDovizCG,pDovizCG_DovizTuru,pDovizCG_DovizYeri,pDovizCG_Kur,pDovizCG_KurTarihi,ldMktar,sBirim,
		ldBirimFiyat,ldBirimFiyat_Doviz,dtIstenenTarih,nTerminSuresi,nKDV,ldKDV,ldKDV_Doviz,ldToplamTutarKDVli,ldToplamTutarKDVli_Doviz,
		bIzlemeKoduOlusacakMi,bIzlemeKoduOlusturuldu,ldMaliyet,ldToplamEuro,COL_1267,pTeknikResim,bAtfVarMi
		FROM Gusto.BPMCG_VTEKLIFSATIRLARI
		WHERE ROWID=@CurrentRowID_TeklifSatir

		SET @VTeklifSatirlari_Rowid = SCOPE_IDENTITY();

		SET @usp_GetErrorInfo = '6';

		DECLARE @CurrentRowID_TSDinamikOzellik int;
		DECLARE @LastRowID_TSDinamikOzellik  int;
	
		SET @CurrentRowID_TSDinamikOzellik = 0;
		SET @LastRowID_TSDinamikOzellik = 0; 

		SELECT TOP 1 @CurrentRowID_TSDinamikOzellik = ROWID FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK 
		WHERE ROWID > @LastRowID_TSDinamikOzellik and PPARENT = @CurrentRowID_TeklifSatir;

		WHILE @CurrentRowID_TSDinamikOzellik is not null
		BEGIN

			SET @usp_GetErrorInfo = '7';

			INSERT INTO Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK
			(PPARENT,pDinOzellik,pDinamikDeger)
			SELECT @VTeklifSatirlari_Rowid,pDinOzellik,pDinamikDeger
			FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK
			WHERE ROWID = @CurrentRowID_TSDinamikOzellik

			SET @LastRowID_TSDinamikOzellik = @CurrentRowID_TSDinamikOzellik;
			SET @CurrentRowID_TSDinamikOzellik = null;
			
			SELECT TOP 1 @CurrentRowID_TSDinamikOzellik = ROWID FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIK  
			WHERE ROWID > @LastRowID_TSDinamikOzellik and PPARENT = @CurrentRowID_TeklifSatir;
		END
		
		--ALTERNATIF STOK SATIRLARINI AKTAR
		SET @usp_GetErrorInfo = '8';
		DECLARE @CurrentRowID_TSAlternatif int;
		DECLARE @LastRowID_TSAlternatif int;
	
		SET @CurrentRowID_TSAlternatif = 0;
		SET @LastRowID_TSAlternatif = 0; 

		SELECT TOP 1 @CurrentRowID_TSAlternatif = ROWID FROM Gusto.BPMCG_VTEKLIFALTERNATIF 
		WHERE ROWID > @LastRowID_TSAlternatif and PPARENT = @CurrentRowID_TeklifSatir;

		print @CurrentRowID_TeklifSatir;
		print @CurrentRowID_TSAlternatif;
		
		WHILE @CurrentRowID_TSAlternatif is not null
		BEGIN

			SET @usp_GetErrorInfo = '9';

			DECLARE @VTeklifSatirlariALT_Rowid int ;

			INSERT INTO Gusto.BPMCG_VTEKLIFALTERNATIF
			(PPARENT,pStokKoduAtf,pIzlemeKoduAtf,dtTerminAtf,nTerminAtf,pDovizAtf,pDovizAtf_DovizTuru,pDovizAtf_DovizYeri,pDovizAtf_Kur,pDovizAtf_KurTarihi,
			nMiktarAtf,sBirimAtf,ldBirimFiyatAtf,ldBirimFiyatAtf_Doviz,nKDVAtf,ldKDVTutariAtf,ldKDVTutariAtf_Doviz,ldToplamTutarEuroAtf,COL_1277,
			ldToplamTutarKDVliAtf,ldToplamTutarKDVliAtf_Doviz,bIzlemeKoduOlusacakMiAtf,bIzlemeKoduOlusturulduAtf,ldMaliyetAtf,sPakDetayAtf,pTeknikResimAtf)
			SELECT @VTeklifSatirlari_Rowid,pStokKoduAtf,pIzlemeKoduAtf,dtTerminAtf,nTerminAtf,pDovizAtf,pDovizAtf_DovizTuru,pDovizAtf_DovizYeri,pDovizAtf_Kur,pDovizAtf_KurTarihi,
			nMiktarAtf,sBirimAtf,ldBirimFiyatAtf,ldBirimFiyatAtf_Doviz,nKDVAtf,ldKDVTutariAtf,ldKDVTutariAtf_Doviz,ldToplamTutarEuroAtf,COL_1277,
			ldToplamTutarKDVliAtf,ldToplamTutarKDVliAtf_Doviz,bIzlemeKoduOlusacakMiAtf,bIzlemeKoduOlusturulduAtf,ldMaliyetAtf,sPakDetayAtf,pTeknikResimAtf
			FROM Gusto.BPMCG_VTEKLIFALTERNATIF
			WHERE ROWID = @CurrentRowID_TSAlternatif

			SET @VTeklifSatirlariALT_Rowid = SCOPE_IDENTITY();
			
			--ALTERNATIF STOK DİNAMİK ÖZELLİKLERİNİ AKTAR
			SET @usp_GetErrorInfo = '10';
			DECLARE @CurrentRowID_TSAltDinamikOzellik int;
			DECLARE @LastRowID_TSAltDinamikOzellik int;
	
			SET @CurrentRowID_TSAltDinamikOzellik = 0;
			SET @LastRowID_TSAltDinamikOzellik = 0; 

			SELECT TOP 1 @CurrentRowID_TSAltDinamikOzellik = ROWID FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIKATF 
			WHERE ROWID > @LastRowID_TSAltDinamikOzellik and PPARENT = @CurrentRowID_TSAlternatif;

			WHILE @CurrentRowID_TSAltDinamikOzellik is not null
			BEGIN

				SET @usp_GetErrorInfo = '11';
				INSERT INTO Gusto.BPMCG_VTEKLIFDINAMIKOZELLIKATF
				(PPARENT,pDinamikOzellikAtf,pDinamilDegerAtf)
				SELECT @VTeklifSatirlariALT_Rowid,pDinamikOzellikAtf,pDinamilDegerAtf
				FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIKATF
				WHERE ROWID = @CurrentRowID_TSAltDinamikOzellik

				SET @LastRowID_TSAltDinamikOzellik = @CurrentRowID_TSAltDinamikOzellik;
				SET @CurrentRowID_TSAltDinamikOzellik = null;
			
				SELECT TOP 1 @CurrentRowID_TSAltDinamikOzellik = ROWID FROM Gusto.BPMCG_VTEKLIFDINAMIKOZELLIKATF
				WHERE ROWID > @LastRowID_TSAltDinamikOzellik and PPARENT = @CurrentRowID_TSAlternatif;
			END	

			SET @LastRowID_TSAlternatif = @CurrentRowID_TSAlternatif;
			SET @CurrentRowID_TSAlternatif = null;
			
			SELECT TOP 1 @CurrentRowID_TSAlternatif = ROWID FROM Gusto.BPMCG_VTEKLIFALTERNATIF  
			WHERE ROWID > @LastRowID_TSAlternatif and PPARENT = @CurrentRowID_TeklifSatir;
		END		

		SET @LastRowID_TeklifSatir = @CurrentRowID_TeklifSatir;
		SET @CurrentRowID_TeklifSatir = null;
			
		SELECT TOP 1 @CurrentRowID_TeklifSatir = ROWID FROM Gusto.BPMCG_VTEKLIFSATIRLARI  
		WHERE ROWID > @LastRowID_TeklifSatir and PPARENT = (SELECT ROWID FROM Gusto.BPMFT_VERILENTEKLIF WHERE PFAALIYET=@pFaaliyet);
		
	END
commit tran
END TRY
BEGIN CATCH
EXECUTE @usp_GetErrorInfo;
rollback tran
END CATCH
GO