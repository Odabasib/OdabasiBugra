SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[V_PersonelGorevYerleri] as select a.* from GUSTO00003.PersonelGorevYerleri a inner join (select pPersonel,MAX(PersonelGorevYerleri_rowid) Rowid from GUSTO00003.PersonelGorevYerleri group by pPersonel) b on a.PersonelGorevYerleri_rowid=b.Rowid
GO