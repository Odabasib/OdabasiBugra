SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_MSGrupKart] As   Select MSGrupKodu_rowid As MSGrupKart_rowid, sKod sMSGrupKodu,  sAd sMSGrupAdi, pMSGrupDetayi, pUstKod, nChildCount, bPasifMi,  SubeKodu From GUSTO00004.MSGrupKodu 
GO