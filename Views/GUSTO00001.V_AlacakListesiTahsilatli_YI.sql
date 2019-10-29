SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


CREATE view [GUSTO00001].[V_AlacakListesiTahsilatli_YI] as 
select 
msk.MusteriSaticiKodu_rowid,
msk.sKod 'Cari Kodu',msk.sAd 'Cari Adı',isnull(ta.sAd,'Müşteri Temsilcisi Belli Değil') Temsilci,
isnull(case when msk.pDoviz>0 then Tahsilat.DovizTahsilat else Tahsilat.TLTahsilat end,0) 'Tahsilat',
isnull(dov.KisaAdi,'TL') 'Para Birimi'
from GUSTO00001.MusteriSaticiKodu msk 
left join GUSTO00001.V_SatisTemsilcisi tk on msk.MusteriSaticiKodu_rowid = tk.pKod
left join GUSTO00001.V_SatisTemsilcisi_Ad ta on tk.pKulTan = ta.cariKulTan_rowid
left join Gusto.Doviz dov on msk.pDoviz = dov.Doviz_rowid
left join 
(
select pCariKodID,max (dtTarih) Tarih,sum(ldHareketDovizTutar) DovizTahsilat,sum(ldTutar) TLTahsilat from GUSTO00001.CariHareket
 where cBorcAlacak = 'A' and nHareketTuru in (3,5,100) and 
 dtTarih<=GETDATE() and dtTarih>=GETDATE()-30
  group by pCariKodID 
) Tahsilat on msk.MusteriSaticiKodu_rowid = Tahsilat.pCariKodID
where msk.nChildCount = 0 and msk.sKod like '120%' 
and isnull(case when msk.pDoviz>0 then Tahsilat.DovizTahsilat else Tahsilat.TLTahsilat end,0) >0

GO