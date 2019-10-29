SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_B_Muhtasar013] as
select 
month(dtAyrilma) Ay,
year(dtAyrilma) Yil,
sum(ldBrutToplam) gayrisafiTutar,
0 kesintiTutari from GUSTO00001.PersonelKidemIhbar group by month(dtAyrilma),year(dtAyrilma)
GO