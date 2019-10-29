SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create view [GUSTO00001].[V_B_Muhtasar041]
 as
select 
1 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all


select 
2 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all


select 
3 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all


select 
4 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
5 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
6 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
7 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
8 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
9 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all



select 
10 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all


select 
11 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 


union all


select 
12 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 * 100/20 gayrisafiTutar,
ht.ldAylikAlacak1 kesintiTutari
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 367 



GO