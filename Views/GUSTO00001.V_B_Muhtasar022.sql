SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO



CREATE view [GUSTO00001].[V_B_Muhtasar022]
 as
select 
1 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all


select 
2 Ay,
dn.Adi Yil,
ht.ldAylikAlacak2 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak2 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all


select 
3 Ay,
dn.Adi Yil,
ht.ldAylikAlacak3 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak3 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all


select 
4 Ay,
dn.Adi Yil,
ht.ldAylikAlacak4 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak4 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
5 Ay,
dn.Adi Yil,
ht.ldAylikAlacak5 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak5 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
6 Ay,
dn.Adi Yil,
ht.ldAylikAlacak6 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak6 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
7 Ay,
dn.Adi Yil,
ht.ldAylikAlacak7 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak7 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
8 Ay,
dn.Adi Yil,
ht.ldAylikAlacak8 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak8 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
9 Ay,
dn.Adi Yil,
ht.ldAylikAlacak9 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak9 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all



select 
10 Ay,
dn.Adi Yil,
ht.ldAylikAlacak10 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak10 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all


select 
11 Ay,
dn.Adi Yil,
ht.ldAylikAlacak11 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak11 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 


union all


select 
12 Ay,
dn.Adi Yil,
ht.ldAylikAlacak12 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak12 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 368 




GO