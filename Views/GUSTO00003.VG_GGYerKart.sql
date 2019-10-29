SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_GGYerKart] As   Select GelirGiderYeriKodu_rowid As GGYer_rowid, sKod GGYerKodu,  sAd GGYerAdi, pGelirGiderDetayi, pUstKod, nChildCount, bPasifMi,  pDoviz, cGelirGiderSekli As cGGYerSekli, SubeKodu	  From 	GUSTO00003.GelirGiderYeriKodu 
GO