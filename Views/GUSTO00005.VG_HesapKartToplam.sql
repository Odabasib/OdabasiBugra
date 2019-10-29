SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_HesapKartToplam] As   Select * from	GUSTO00005.HesapToplam Where  pHesapKodu In (Select HesapKodu_rowid From GUSTO00005.HesapKodu Where nChildCount=0)
GO