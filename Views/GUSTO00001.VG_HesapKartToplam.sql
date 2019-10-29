SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_HesapKartToplam] As   Select * from	GUSTO00001.HesapToplam Where  pHesapKodu In (Select HesapKodu_rowid From GUSTO00001.HesapKodu Where nChildCount=0)
GO