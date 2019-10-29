SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_AlacakListesiTahilatli] as 
select 
msk.MusteriSaticiKodu_rowid,
msk.sKod 'Cari Kodu',msk.sAd 'Cari Adı',isnull(ta.sAd,'Müşteri Temsilcisi Belli Değil') Temsilci,
isnull(case when msk.pDoviz>0 then GenelBakiyeDurumu.BorcDoviz-GenelBakiyeDurumu.AlacakDoviz else GenelBakiyeDurumu.BorcTL-GenelBakiyeDurumu.AlacakTL end,0) 'Bakiye',
isnull(case when msk.pDoviz>0 then VadeGecen.KalanDoviz else VadeGecen.KalanTL end,0) 'Vadesi Geçmiş',
isnull(case when msk.pDoviz>0 then Tahsilat.DovizTahsilat else Tahsilat.TLTahsilat end,0) 'Tahsilat',
isnull
((	
select case when msk.pDoviz >0 then TahsilatOncesi.DovizBakiye else TahsilatOncesi.TLBakiye end
	from
   (
	select 
	sum(isnull(case when cBorcAlacak = 'B' then ldTutar end,0)) -sum(isnull(case when cBorcAlacak = 'A' then ldTutar end,0)) TLBakiye,
	sum(isnull(case when cBorcAlacak = 'B' then ldHareketDovizTutar end,0)) -sum(isnull(case when cBorcAlacak = 'A' then ldHareketDovizTutar end,0)) DovizBakiye
	from GUSTO00001.CariHareket ch where pCariKodID = msk.MusteriSaticiKodu_Rowid and ch.dtTarih<Tahsilat.Tarih
	) TahsilatOncesi
),isnull(case when msk.pDoviz>0 then GenelBakiyeDurumu.BorcDoviz-GenelBakiyeDurumu.AlacakDoviz else GenelBakiyeDurumu.BorcTL-GenelBakiyeDurumu.AlacakTL end,0) ) 'Tahsilat Öncesi ',
isnull(dov.KisaAdi,'TL') 'Para Birimi'
from GUSTO00001.MusteriSaticiKodu msk 
left join GUSTO00001.V_SatisTemsilcisi tk on msk.MusteriSaticiKodu_rowid = tk.pKod
left join GUSTO00001.V_SatisTemsilcisi_Ad ta on tk.pKulTan = ta.cariKulTan_rowid
left join Gusto.Doviz dov on msk.pDoviz = dov.Doviz_rowid
left join 
(
	select pCariKodID,
		sum(isnull(case when cBorcAlacak = 'B' then ldTutar end,0)) BorcTL,
		sum(isnull(case when cBorcAlacak = 'A' then ldTutar end,0)) AlacakTL,
		sum(isnull(case when cBorcAlacak = 'B' then ldHareketDovizTutar end,0)) BorcDoviz,
		sum(isnull(case when cBorcAlacak = 'A' then ldHareketDovizTutar end,0)) AlacakDoviz
	 from GUSTO00001.CariHareket group by pCariKodID

) GenelBakiyeDurumu on msk.MusteriSaticiKodu_rowid = GenelBakiyeDurumu.pCariKodID
left join
(
select pCari,sum(ldKalanHareketDovizTutar) KalanDoviz,sum(ldKalanTutar) KalanTL from GUSTO00001.V_AcikHesapIslemKapanmayan
where cCariTuru = 'C' and dtVadeTarihi<GETDATE() and cKapandi = 'H' and cBorcAlacak ='B' group by pCari
) VadeGecen on msk.MusteriSaticiKodu_rowid = VadeGecen.pCari
left join 
(
select pCariKodID,max (dtTarih) Tarih,sum(ldHareketDovizTutar) DovizTahsilat,sum(ldTutar) TLTahsilat from GUSTO00001.CariHareket
 where cBorcAlacak = 'A' and nHareketTuru in (2,5) and 
 dtTarih<=GETDATE() and dtTarih>=GETDATE()-7
  group by pCariKodID 
) Tahsilat on msk.MusteriSaticiKodu_rowid = Tahsilat.pCariKodID
where msk.nChildCount = 0 and msk.sKod like '120%' and
(
isnull(case when msk.pDoviz>0 then GenelBakiyeDurumu.BorcDoviz-GenelBakiyeDurumu.AlacakDoviz else GenelBakiyeDurumu.BorcTL-GenelBakiyeDurumu.AlacakTL end,0)>0
or
isnull(case when msk.pDoviz>0 then Tahsilat.DovizTahsilat else Tahsilat.TLTahsilat end,0)>0
)
GO