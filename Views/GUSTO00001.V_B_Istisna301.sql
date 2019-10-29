SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_B_Istisna301] as 
select 
301 Kod,
month(Tarih)  Ay,
 year(Tarih) Yil,
sum(ldKDVOncesiTutar) Tutar
from GUSTO00001.V_FaturaKTarihli 
where sFaturaSeri  in  ('Eİ2019') group by month(Tarih),YEAR(Tarih)
GO