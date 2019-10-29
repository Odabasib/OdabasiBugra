SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_DepoKart] As   Select DepoKodu_rowid As DepoKart_rowid,   sKod sDepoKod, sAd sDepoAd, pDepoDetayi, pUstKod, nChildCount,  bPasifMi, pDepoMaliyetKodu, nEngelleUyarSerbest, SubeKodu From GUSTO00001.DepoKodu 
GO