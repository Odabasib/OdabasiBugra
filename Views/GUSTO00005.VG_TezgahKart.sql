SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_TezgahKart] As   Select TezgahKodu_rowid As TezgahKart_rowid, sKod sTezgahKodu,  sAd sTezgahAdi, pUstKod, nChildCount, bPasifMi, ldBrmSureBakimOnarimMaliyeti,  ldBirimSureAmortismanMaliyeti, ldBirimSureKiraMaliyeti, ldBirimSureDegiskenMaliyeti1,  ldBirimSureDegiskenMaliyeti2, ldBirimSureDegiskenMaliyeti3, sDegiskenMaliyetAdi1,  sDegiskenMaliyetAdi2, sDegiskenMaliyetAdi3, pIsMerkezi, pCalismaTakvimi, ldOrtalamaKapasite,  nOrtalamaKapasiteBirimi, pTezgahSinifiKodu, SubeKodu  From GUSTO00005.TezgahKodu 
GO