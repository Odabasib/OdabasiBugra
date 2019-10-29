SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view  [GUSTO00001].[V_B_Indirimler103] as


select 
103 Kod,
dn.Adi 'Yıl',
1 'Ay',
sum(ht.ldAylikBorc1) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi

union all

select 
103 Kod,
dn.Adi 'Yıl',
2 'Ay',
sum(ht.ldAylikBorc2) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi

union all

select 
103 Kod,
dn.Adi 'Yıl',
3 'Ay',
sum(ht.ldAylikBorc3) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi

union all

select 
103 Kod,
dn.Adi 'Yıl',
4 'Ay',
sum(ht.ldAylikBorc4) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
5 'Ay',
sum(ht.ldAylikBorc5) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
6 'Ay',
sum(ht.ldAylikBorc6) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
7 'Ay',
sum(ht.ldAylikBorc7) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
8 'Ay',
sum(ht.ldAylikBorc8) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
9 'Ay',
sum(ht.ldAylikBorc9) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi



union all

select 
103 Kod,
dn.Adi 'Yıl',
10 'Ay',
sum(ht.ldAylikBorc10) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi


union all

select 
103 Kod,
dn.Adi 'Yıl',
11 'Ay',
sum(ht.ldAylikBorc11) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi



union all

select 
103 Kod,
dn.Adi 'Yıl',
12 'Ay',
sum(ht.ldAylikBorc12) Tutar
from GUSTO00001.HesapKodu hk
inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
inner join GUSTO.Donem dn on ht.pDonem = dn.Donem_rowid
where hk.sKod in ('191.99.00001') and pFirma = 1 group by dn.Adi
GO