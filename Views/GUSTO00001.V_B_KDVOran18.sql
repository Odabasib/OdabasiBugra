SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_B_KDVOran18] as

select 
dn.Adi 'Yil',
1 'Ay',
sum(ht.ldAylikBorc1) / 18 *100 Matrah ,
sum(ht.ldAylikBorc1) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
2 'Ay',
sum(ht.ldAylikBorc2) / 18 *100 Matrah ,
sum(ht.ldAylikBorc2) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
3 'Ay',
sum(ht.ldAylikBorc3) / 18 *100 Matrah ,
sum(ht.ldAylikBorc3) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi

union all



select 
dn.Adi 'Yil',
4 'Ay',
sum(ht.ldAylikBorc4) / 18 *100 Matrah ,
sum(ht.ldAylikBorc4) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
5 'Ay',
sum(ht.ldAylikBorc5) / 18 *100 Matrah ,
sum(ht.ldAylikBorc5) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
6 'Ay',
sum(ht.ldAylikBorc6) / 18 *100 Matrah ,
sum(ht.ldAylikBorc6) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
7 'Ay',
sum(ht.ldAylikBorc7) / 18 *100 Matrah ,
sum(ht.ldAylikBorc7) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
8 'Ay',
sum(ht.ldAylikBorc8) / 18 *100 Matrah ,
sum(ht.ldAylikBorc8) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
9 'Ay',
sum(ht.ldAylikBorc9) / 18 *100 Matrah ,
sum(ht.ldAylikBorc9) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
10 'Ay',
sum(ht.ldAylikBorc10) / 18 *100 Matrah ,
sum(ht.ldAylikBorc10) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
11 'Ay',
sum(ht.ldAylikBorc11) / 18 *100 Matrah ,
sum(ht.ldAylikBorc11) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
12 'Ay',
sum(ht.ldAylikBorc12) / 18 *100 Matrah ,
sum(ht.ldAylikBorc12) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00018','191.02.00018','191.03.00018') and pFirma =1   group by dn.Adi
GO