SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_KismiIstisna] as 
/*Kısmi İstisna*/
select 
dn.Adi 'Yıl',
1 'Ay',
ht.ldAylikAlacak1 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
2 'Ay',
ht.ldAylikAlacak2 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
3 'Ay',
ht.ldAylikAlacak3 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
4 'Ay',
ht.ldAylikAlacak4 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
5 'Ay',
ht.ldAylikAlacak5 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
6 'Ay',
ht.ldAylikAlacak6 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all


select 
dn.Adi 'Yıl',
7 'Ay',
ht.ldAylikAlacak7 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
8 'Ay',
ht.ldAylikAlacak8 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
9 'Ay',
ht.ldAylikAlacak9 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all

select 
dn.Adi 'Yıl',
10 'Ay',
ht.ldAylikAlacak10 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all


select 
dn.Adi 'Yıl',
11 'Ay',
ht.ldAylikAlacak11 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

union all


select 
dn.Adi 'Yıl',
12 'Ay',
ht.ldAylikAlacak12 Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod ='600.03.00005' and pFirma = 1 

GO