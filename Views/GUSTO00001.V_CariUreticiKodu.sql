SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_CariUreticiKodu]
as 
select pHareket,kul.sKod,uk.pStok,uk.sUreticiKodu from GUSTO00001.alsatKulTanHar har 
left join GUSTO00001.alsatKulTan kul on har.pKulTan = kul.alsatKulTan_rowid 
left join 
(	
	select distinct sKod,sAd,pStok,sUreticiKodu from GUSTO00001.UreticiKodu 
	inner join GUSTO00001.MusteriSaticiKodu msk on msk.MusteriSaticiKodu_rowid = pCari
	
) uk on kul.sKod = uk.sKod
where pKulTanTanim = 11
GO