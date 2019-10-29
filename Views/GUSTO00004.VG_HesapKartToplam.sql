SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_HesapKartToplam] As   Select * from	GUSTO00004.HesapToplam Where  pHesapKodu In (Select HesapKodu_rowid From GUSTO00004.HesapKodu Where nChildCount=0)
GO