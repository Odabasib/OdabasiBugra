SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_CariBorcAlacak] as 
select msk.MusteriSaticiKodu_rowid,msk.sKod,msk.sAd, Alacak.Alacak, Borc.Borc from GUSTO00001.MusteriSaticiKodu msk 
left join 
(
select pCariKodID,case when cBorcAlacak='A' then Sum(ldTutar) end Alacak from GUSTO00001.CariHareket where cBorcAlacak='A'
group by pCariKodID,cBorcAlacak
) Alacak on msk.MusteriSaticiKodu_rowid = Alacak.pCariKodID  
left join 
(
select pCariKodID,case when cBorcAlacak='B'  then Sum(ldTutar) end Borc from GUSTO00001.CariHareket where cBorcAlacak='B'
group by pCariKodID,cBorcAlacak
) Borc on msk.MusteriSaticiKodu_rowid = Borc.pCariKodID
where msk.nChildCount =0
GO