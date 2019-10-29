SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_ButceKart] As Select ButceKodu_rowid As ButceKart_rowid,  sButceKodu sButceKodu, sButceAdi sButceAdi, pUstKod, nChildCount, bPasifMi, bButceTipi, pDoviz,cButceTuru,  cBorcAlacak, SubeKodu From GUSTO00004.ButceKodu
GO