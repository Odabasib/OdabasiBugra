SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_SCKasaKart] As   Select 	SCKasaKodu_rowid As SCKasaKart_rowid, sKod sSCKasaKodu,  sAd sSCKasaAdi, pKasaDetayi, pUstKod, nChildCount,  bPasifMi, SubeKodu From GUSTO00001.SCKasaKodu 
GO