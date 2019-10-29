SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_B_MuhtasarDiger]
 as
select 
1 Ay,
dn.Adi Yil,
ht.ldAylikAlacak1 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 


union all


select 
2 Ay,
dn.Adi Yil,
ht.ldAylikAlacak2 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all


select 
3 Ay,
dn.Adi Yil,
ht.ldAylikAlacak3 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
4 Ay,
dn.Adi Yil,
ht.ldAylikAlacak4 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all


select 
5 Ay,
dn.Adi Yil,
ht.ldAylikAlacak5 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all



select 
6 Ay,
dn.Adi Yil,
ht.ldAylikAlacak6 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all



select 
7 Ay,
dn.Adi Yil,
ht.ldAylikAlacak7 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
8 Ay,
dn.Adi Yil,
ht.ldAylikAlacak8 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
9 Ay,
dn.Adi Yil,
ht.ldAylikAlacak9 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
10 Ay,
dn.Adi Yil,
ht.ldAylikAlacak10 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
11 Ay,
dn.Adi Yil,
ht.ldAylikAlacak11 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 

union all

select 
12 Ay,
dn.Adi Yil,
ht.ldAylikAlacak12 / 0.99241 gayrisafiTutar
from GUSTO00001.HesapToplam ht
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_Rowid
 where ht.pHesapKodu = 9265 


GO