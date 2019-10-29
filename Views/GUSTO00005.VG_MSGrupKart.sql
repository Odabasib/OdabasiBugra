SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_MSGrupKart] As   Select MSGrupKodu_rowid As MSGrupKart_rowid, sKod sMSGrupKodu,  sAd sMSGrupAdi, pMSGrupDetayi, pUstKod, nChildCount, bPasifMi,  SubeKodu From GUSTO00005.MSGrupKodu 
GO