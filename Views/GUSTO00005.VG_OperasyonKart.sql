SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_OperasyonKart] As   Select OperasyonKodu_rowid As OperasyonKart_rowid, sKod sOperasyonKodu,  sAd sOperasyonAdi, bDenetlemeNoktasiMi,bGanttSuresiUzarMi, pOperasyonDetay,  pUstKod, nChildCount, bPasifMi, SubeKodu  From GUSTO00005.OperasyonKodu 
GO