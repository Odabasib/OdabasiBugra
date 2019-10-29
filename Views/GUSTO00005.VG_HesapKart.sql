SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_HesapKart] As   Select HesapKodu_rowid As HK_rowid,  sKod HKKodu, sAd HKAdi, pHesapDetayi, pUstKod, nChildCount,  bPasifMi, pDoviz, SubeKodu From GUSTO00005.HesapKodu 
GO