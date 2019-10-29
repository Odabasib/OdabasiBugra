SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_CariToplamBorc] As   select CH.pCariKodID, sum(CH.ldtutar) ToplamBorc   from GUSTO00004.carihareket CH where	CH.cBorcAlacak='B'  group by 	CH.pCariKodID 
GO