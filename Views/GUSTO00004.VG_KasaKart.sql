SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_KasaKart] As   Select KasaKodu_rowid As KasaKart_rowid, sKod sKasaKodu,  sAd sKasaAdi, pKasaDetayi, pUstKod, nChildCount, bPasifMi,  pDoviz, SubeKodu From GUSTO00004.KasaKodu 
GO