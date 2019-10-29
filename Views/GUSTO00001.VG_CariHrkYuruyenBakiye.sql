﻿SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create view [GUSTO00001].[VG_CariHrkYuruyenBakiye] As  select msk.sKod, msk.sAd, c.*,  case when c.pdoviz=0 then 'TL' else  (select KisaAdi from Gusto.doviz where doviz_rowid=c.pDoviz) end as HareketDovizAdi, case when msk.pDoviz=0 then 'TL' else  (select KisaAdi from Gusto.doviz where Doviz_rowid=msk.pDoviz) end as HesapDovizAdı, (select sAciklama from Gusto.HareketTuru where nIslemNumarasi=nHareketTuru) as 'Hareket Türü', case when cBorcAlacak='B' then ldTutar else 0 end as BorcTutar, case when cBorcAlacak='A' then ldTutar else 0 end as AlacakTutar, case when cBorcAlacak='B' then ldTutar  when cBorcAlacak='A' then -ldTutar end as YuruyenBakiye, case when cBorcAlacak='B' then ldSistemDovizTutar else 0 end as SD_BorcTutar, case when cBorcAlacak='A' then ldSistemDovizTutar else 0 end as SD_AlacakTutar, case when cBorcAlacak='B' then ldSistemDovizTutar  when cBorcAlacak='A' then -ldSistemDovizTutar end as SD_YuruyenBakiye, case when cBorcAlacak='B' then ldHesapDovizTutar else 0 end as HD_BorcTutar, case when cBorcAlacak='A' then ldHesapDovizTutar else 0 end as HD_AlacakTutar, case when cBorcAlacak='B' then ldHesapDovizTutar  when cBorcAlacak='A' then -ldHesapDovizTutar end as HD_YuruyenBakiye, case when cBorcAlacak='B' then ldHareketDovizTutar else 0 end as HRKD_BorcTutar, case when cBorcAlacak='A' then ldHareketDovizTutar else 0 end as HRKD_AlacakTutar, case when cBorcAlacak='B' then ldHareketDovizTutar  when cBorcAlacak='A' then -ldHareketDovizTutar end as HRKD_YuruyenBakiye from GUSTO00001.carihareket c  left outer join GUSTO00001.MusteriSaticiKodu msk  on msk.musterisaticikodu_rowid=c.pcariKodId
GO