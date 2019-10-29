SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_ButceKart] As Select ButceKodu_rowid As ButceKart_rowid,  sButceKodu sButceKodu, sButceAdi sButceAdi, pUstKod, nChildCount, bPasifMi, bButceTipi, pDoviz,cButceTuru,  cBorcAlacak, SubeKodu From GUSTO00005.ButceKodu
GO