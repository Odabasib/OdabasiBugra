SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




CREATE view [GUSTO00001].[V_VadeGeciktirenCariler_Alacakli] as 
select msk.MusteriSaticiKodu_rowid,msk.sKod,msk.sAd,bakiye.Bakiye
 from GUSTO00001.MusteriSaticiKodu msk
inner join GUSTO00001.MusteriSaticiDetayi msd on msk.MusteriSaticiKodu_rowid = msd.pMusteriSaticiKodu
inner join GUSTO00001.MusteriSaticiDetayDevami devam on msd.pMusteriSaticiDetayDevami = devam.MusteriSaticiDetayDevami_rowid
left join 
(
select
 pCariKodID,
 sum(case when cBorcAlacak = 'B'  then  -(case when msk.sKod like '120.02%' then ldHareketDovizTutar else ldTutar end )  else (case when msk.sKod like '120.02%' then ldHareketDovizTutar else ldTutar end) end) Bakiye
 from GUSTO00001.CariHareket ch
 inner join GUSTO00001.MusteriSaticiKodu msk on ch.pCariKodID = msk.MusteriSaticiKodu_rowid 
  group by pCariKodID 
 ) bakiye on bakiye.pCariKodID = msk.MusteriSaticiKodu_rowid
where [GUSTO00001].[Func_VadeGecikmesi] (msk.MusteriSaticiKodu_rowid)>90 and bakiye.Bakiye>=0 and msk.sKod like '120%'



GO