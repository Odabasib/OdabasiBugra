SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_CariToplamBorc] As   select CH.pCariKodID, sum(CH.ldtutar) ToplamBorc   from GUSTO00001.carihareket CH where	CH.cBorcAlacak='B'  group by 	CH.pCariKodID 
GO