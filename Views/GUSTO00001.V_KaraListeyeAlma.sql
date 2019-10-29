SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO







CREATE view [GUSTO00001].[V_KaraListeyeAlma] as 

select 
xx.ID Id,
xx.Kod Kod,
xx.Ad Ad,
sum(xx.Tutar) Tutar ,
xx.Doviz Doviz,
xx.aciklama
 from 
(
select 
mus.MusteriSaticiKodu_rowid ID,
det.MusteriSaticiDetayi_rowid detID,
mus.sKod Kod,
mus.sAd Ad,
case when mus.sKod like '120.01%' then ldKalanTutar else ldKalanHareketDovizTutar end Tutar,
case mus.pDoviz when 2 then 'USD' when 3 then 'EUR' when 4 then 'GBP' else 'TL' end Doviz,
'Riskli Bakiye' aciklama
from GUSTO00001.V_CariRiskKontrol risk
inner join GUSTO00001.MusteriSaticiKodu mus on risk.pCari = mus.MusteriSaticiKodu_rowid
inner join GUSTO00001.MusteriSaticiDetayi det on mus.MusteriSaticiKodu_rowid = det.pMusteriSaticiKodu
where ( mus.sKod like '120.01%' or mus.sKod like '120.02%' ) and mus.MusteriSaticiKodu_rowid not in (1927,855,864) and det.pKaraListeyeAlanKullanici = 0
) xx
where xx.Tutar > (select ldRiskLimiti from GUSTO00001.MusteriSaticiDetayDevami where pMusteriSaticiDetayi =xx.detID)
and xx.ID not in (select MusteriSaticiKodu_rowid from Gusto00001.V_VadeGeciktirenCariler_Alacakli)
group by xx.ID,xx.Kod,xx.Ad,xx.Doviz,xx.aciklama


union 

select vade.*, 'Vade Gecikmesi' aciklama from [GUSTO00001].[V_VadeGeciktirenCariler] vade
inner join GUSTO00001.MusteriSaticiKodu msk on msk.MusteriSaticiKodu_rowid = vade.MusteriSaticiKodu_Rowid
inner join GUSTO00001.MusteriSaticiDetayi msd on msk.pMusteriSaticiDetayi = msd.MusteriSaticiDetayi_rowid
where msd.pKaraListeyeAlanKullanici = 0 and 
 msk.MusteriSaticiKodu_Rowid not in  (select MusteriSaticiKodu_rowid from Gusto00001.V_VadeGeciktirenCariler_Alacakli)


 union

select MusteriSaticiKodu_rowid,sKod,sAd,0 tutar,'' doviz ,'Yeni Cari' aciklama from GUSTO00001.MusteriSaticiKodu msk
inner join GUSTO00001.MusteriSaticiDetayi msd on msk.MusteriSaticiKodu_rowid = msd.pMusteriSaticiKodu
 where msk.nChildCount = 0 and msk.MusteriSaticiKodu_rowid not in 
(select pCariKodID from GUSTO00001.CariHareket) and msk.sKod like '120.01.%'
and msd.pKaraListeyeAlanKullanici=0



GO