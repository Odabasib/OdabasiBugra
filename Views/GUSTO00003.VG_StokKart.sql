SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_StokKart] As   Select StokKodu_rowid As StokKart_rowid, sKod sStokKod,  sAd sStokAd, sKisaAdi sStokKisaAd, pStokDetayi, pGrupKodu,  pUstKod, cIzlemeKodlariVarmi, bIzlemeKoduGirilemez, bIzlemeKoduZorunlu,  nChildCount, bPasifMi, pDoviz, SubeKodu  From GUSTO00003.StokKodu 
GO