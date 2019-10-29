SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_HesapKartToplam] As   Select * from	GUSTO00003.HesapToplam Where  pHesapKodu In (Select HesapKodu_rowid From GUSTO00003.HesapKodu Where nChildCount=0)
GO