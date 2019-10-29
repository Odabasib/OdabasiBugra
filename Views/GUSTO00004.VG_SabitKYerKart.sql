SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_SabitKYerKart] As   Select SabitKYerKodu_rowid As SabitKYerKart_rowid, sKod sSabitKYerKodu,  sAd sSabitKYerAdi, pSabitKYerDetayi, pOrganizasyon, pGGYeri,  pUstKod, nChildCount, bPasifMi From GUSTO00004.SabitKYerKodu 
GO