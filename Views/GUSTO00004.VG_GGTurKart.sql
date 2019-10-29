SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_GGTurKart] As   Select GelirGiderTuruKodu_rowid As GGTur_rowid,  sKod GGTurKodu, sAd GGTurAdi, pGelirGiderTuruDetayi, pUstKod,  nChildCount, bPasifMi, pDoviz, cGelirGiderSekli As cGGTurSekli,  SubeKodu From GUSTO00004.GelirGiderTuruKodu 
GO