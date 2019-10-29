SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
	CREATE view [GUSTO00001].[V_B_Matrah550] as 
	
	select 
	1 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak1 Matrah,
	ht.ldAylikAlacak1 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	2 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak2 Matrah,
	ht.ldAylikAlacak2 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 

	union all

	select 
	3 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak3 Matrah,
	ht.ldAylikAlacak3 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	4 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak4 Matrah,
	ht.ldAylikAlacak4 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 


	union all

	select 
	5 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak5 Matrah,
	ht.ldAylikAlacak5 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	6 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak6 Matrah,
	ht.ldAylikAlacak6 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 


	union all

	select 
	7 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak7 Matrah,
	ht.ldAylikAlacak7 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	8 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak8 Matrah,
	ht.ldAylikAlacak8 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 


	union all

	select 
	9 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak9 Matrah,
	ht.ldAylikAlacak9 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	10 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak10 Matrah,
	ht.ldAylikAlacak10 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 

	union all

	select 
	11 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak11 Matrah,
	ht.ldAylikAlacak11 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
	
	union all

	select 
	12 'Ay',
	dn.Adi 'Yil',
	550 Kod,
	ht.ldAylikAlacak12 Matrah,
	ht.ldAylikAlacak12 * 18/100 KDVTutari	
	from GUSTO00001.HesapKodu hk
	inner join GUSTO00001.HesapToplam ht on hk.HesapKodu_rowid = ht.pHesapKodu
	inner join Gusto.Donem dn on ht.pDonem = dn.Donem_rowid
	where hk.sKod ='679.01.00001' and dn.pFirma = 1 
GO