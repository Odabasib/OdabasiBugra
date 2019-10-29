SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_MatrahDiger] as 
select 
month(ft.dtFaturaTarih) Ay,
year(ft.dtFaturaTarih) Yil,
503 Kod, 
isnull(sum(ldKDVOncesiTutar),0) Matrah,isnull(sum(ldKDVTutari),0) KDVTutari from GUSTO00001.Fatura ft
inner join GUSTO00001.StokHareketBaslik shb on ft.Fatura_rowid = shb.pFatura
inner join GUSTO00001.StokHareket sh on  shb.StokHareketBaslik_rowid = sh.pHareketBaslik
where sh.cStokHizmetDemirbas = 'D' and cGirisCikis = '1' group by month(ft.dtFaturaTarih),year(ft.dtFaturaTarih)

union all

select 
month(dtFaturaTarih) Ay,
year(dtFaturaTarih) Yil,
504 Kod,
sum(ldKDVOncesiTutar),
sum(ldKDVTutari)
from GUSTO00001.Fatura 
where sFaturaSeri  in  ('ARİ2019','EİA2019') group by month(dtFaturaTarih),year(dtFaturaTarih)

union all

select * from Gusto00001.V_B_Matrah550
GO