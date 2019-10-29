SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_MSDigerKart] As   Select MSDigerKodu_rowid As MSDigerKart_rowid, sKod sMSDigerKod,  sAd sMSDigerAd, pMSDigerDetayi, pUstKod, nChildCount,  bPasifMi, pDoviz, SubeKodu From GUSTO00005.MSDigerKodu 
GO