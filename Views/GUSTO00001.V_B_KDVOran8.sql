SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_B_KDVOran8] as

select 
dn.Adi 'Yil',
1 'Ay',
sum(ht.ldAylikBorc1) / 8 *100 Matrah ,
sum(ht.ldAylikBorc1) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
2 'Ay',
sum(ht.ldAylikBorc2) / 8 *100 Matrah ,
sum(ht.ldAylikBorc2) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
3 'Ay',
sum(ht.ldAylikBorc3) / 8 *100 Matrah ,
sum(ht.ldAylikBorc3) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi

union all


select 
dn.Adi 'Yil',
4 'Ay',
sum(ht.ldAylikBorc4) / 8 *100 Matrah ,
sum(ht.ldAylikBorc4) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
5 'Ay',
sum(ht.ldAylikBorc5) / 8 *100 Matrah ,
sum(ht.ldAylikBorc5) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
6 'Ay',
sum(ht.ldAylikBorc6) / 8 *100 Matrah ,
sum(ht.ldAylikBorc6) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
7 'Ay',
sum(ht.ldAylikBorc7) / 8 *100 Matrah ,
sum(ht.ldAylikBorc7) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
8 'Ay',
sum(ht.ldAylikBorc8) / 8 *100 Matrah ,
sum(ht.ldAylikBorc8) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
9 'Ay',
sum(ht.ldAylikBorc9) / 8 *100 Matrah ,
sum(ht.ldAylikBorc9) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
10 'Ay',
sum(ht.ldAylikBorc10) / 8 *100 Matrah ,
sum(ht.ldAylikBorc10) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi


union all

select 
dn.Adi 'Yil',
11 'Ay',
sum(ht.ldAylikBorc11) / 8 *100 Matrah ,
sum(ht.ldAylikBorc11) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi

union all

select 
dn.Adi 'Yil',
12 'Ay',
sum(ht.ldAylikBorc12) / 8 *100 Matrah ,
sum(ht.ldAylikBorc12) KDV
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join gusto.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.01.00008','191.02.00008','191.03.00008') and pFirma =1   group by dn.Adi
GO