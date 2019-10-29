SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_SabitKKart] As   Select SabitKKodu_rowid As SabitKKart_rowid, sKod sSabitKKodu,  sAd sSabitKAdi, pSabitKDetayi, pUstKod, nChildCount, pDoviz,  bPasifMi, SubeKodu From GUSTO00004.SabitKKodu 
GO