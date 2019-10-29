SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_StokGrupKart] As   Select StokGrupKodu_rowid As StokGrupKart_rowid, sKod sStokGrupKodu,  sAd sStokGrupAdi, sKisaAdi, pUstKod, nChildCount, bPasifMi,  SubeKodu From	GUSTO00003.StokGrupKodu 
GO