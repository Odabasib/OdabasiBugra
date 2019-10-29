SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


CREATE view [GUSTO00001].[V_B_Muhtasar302] as 
select 
MONTH(dtTarih) Ay,year(dtTarih) Yil,
sum(ldTutar)/0.00759 gayrisafiTutar,
sum(ldTutar) kesintiTutari
 from GUSTO00001.YevmiyeHareketi where pHesapKodu = 6159 and pDonem = 11 and bBorcMu = 'A' group by MONTH(dtTarih),year(dtTarih)
GO