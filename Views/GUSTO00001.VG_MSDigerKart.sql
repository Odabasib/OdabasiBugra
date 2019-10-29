SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_MSDigerKart] As   Select MSDigerKodu_rowid As MSDigerKart_rowid, sKod sMSDigerKod,  sAd sMSDigerAd, pMSDigerDetayi, pUstKod, nChildCount,  bPasifMi, pDoviz, SubeKodu From GUSTO00001.MSDigerKodu 
GO