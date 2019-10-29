SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_MatrahTevkifataTabiOlmayan] as
select 
month(dtFaturaTarih) Ay,
YEAR(dtFaturaTarih) Yil ,
sum(ldKDVOncesiTutar) Matrah,
18 Oran , 
(sum(ldKDVOncesiTutar)*18)/100 KDVTutari from GUSTO00001.Fatura 
where sFaturaSeri  in  ('E2019','EA2019','IAR2019') group by month(dtFaturaTarih),YEAR(dtFaturaTarih)
GO