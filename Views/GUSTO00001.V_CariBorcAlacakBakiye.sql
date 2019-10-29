SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_CariBorcAlacakBakiye] as  select m.sKod,m.sAd,j.*,BorcKalan-AlacakKalan as Bakiye,BorcKalan_Doviz-AlacakKalan_Doviz as Bakiye_Dovizli,m.pDoviz  from GUSTO00001.MusteriSaticiKodu m,
(select 
pCari,
sum(BorcToplam) BorcToplam,
sum(AlacakToplam) AlacakToplam,
sum(BorcKalan) BorcKalan,
sum(AlacakKalan) AlacakKalan,

sum(BorcToplam_Doviz) BorcToplam_Doviz,
sum(AlacakToplam_Doviz) AlacakToplam_Doviz,
sum(BorcKalan_Doviz) BorcKalan_Doviz,
sum(AlacakKalan_Doviz) AlacakKalan_Doviz
from
(select pCari,
	case when cBorcAlacak = 'B' then isnull(sum(ldTutar),0) else 0 end as BorcToplam,
	case when cBorcAlacak = 'A' then isnull(sum(ldTutar),0) else 0 end as AlacakToplam,
	case when cBorcAlacak = 'B' then isnull(sum(ldKalanTutar),0) else 0 end as BorcKalan,
	case when cBorcAlacak = 'A' then isnull(sum(ldKalanTutar),0) else 0 end as AlacakKalan,

	case when cBorcAlacak = 'B' then isnull(sum(ldHareketDovizTutar),0) else 0 end as BorcToplam_Doviz,
	case when cBorcAlacak = 'A' then isnull(sum(ldHareketDovizTutar),0) else 0 end as AlacakToplam_Doviz,
	case when cBorcAlacak = 'B' then isnull(sum(ldKalanHareketDovizTutar),0) else 0 end  as BorcKalan_Doviz,
	case when cBorcAlacak = 'A' then isnull(sum(ldKalanHareketDovizTutar),0) else 0 end  as AlacakKalan_Doviz
from GUSTO00001.AcikHesapIslem 
where   cCariTuru = 'C' 
group by pCari,cBorcAlacak) t
group by pCari) j
where m.MusteriSaticiKodu_rowid = j.pCari

GO