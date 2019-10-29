SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_CariToplamBorc] As   select CH.pCariKodID, sum(CH.ldtutar) ToplamBorc   from GUSTO00003.carihareket CH where	CH.cBorcAlacak='B'  group by 	CH.pCariKodID 
GO