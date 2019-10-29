SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO






CREATE view [GUSTO00001].[V_VadeGeciktirenCariler] as 
select msk.MusteriSaticiKodu_rowid,msk.sKod,msk.sAd,isnull(bakiye.risklibakiye,0) RiskliBakiye, '' doviz
 from GUSTO00001.MusteriSaticiKodu msk
inner join GUSTO00001.MusteriSaticiDetayi msd on msk.MusteriSaticiKodu_rowid = msd.pMusteriSaticiKodu
inner join GUSTO00001.MusteriSaticiDetayDevami devam on msd.pMusteriSaticiDetayDevami = devam.MusteriSaticiDetayDevami_rowid
left join 
(
select pCari,sum(TutarTop) risklibakiye from GUSTO00001.V_CariRiskKontrol group by pCari
 ) bakiye on bakiye.pCari = msk.MusteriSaticiKodu_rowid
where [GUSTO00001].[Func_VadeGecikmesi] (msk.MusteriSaticiKodu_rowid)>90  and msk.sKod like '120%' and isnull(bakiye.risklibakiye,0)-devam.ldRiskLimiti>=0






GO