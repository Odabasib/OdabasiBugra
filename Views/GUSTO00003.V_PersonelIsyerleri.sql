SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[V_PersonelIsyerleri] as select a.* ,DATEADD(year,1,a.dtIseGiris) 'İzinHakedisYili' from GUSTO00003.PersonelIsyerleri a inner join (select pPersonel,MAX(PersonelIsyerleri_rowid) Rowid from GUSTO00003.PersonelIsyerleri group by pPersonel) b on a.PersonelIsyerleri_rowid=b.Rowid
GO