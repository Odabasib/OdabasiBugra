SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[V_PersonelGorevYerleri] as select a.* from GUSTO00004.PersonelGorevYerleri a inner join (select pPersonel,MAX(PersonelGorevYerleri_rowid) Rowid from GUSTO00004.PersonelGorevYerleri group by pPersonel) b on a.PersonelGorevYerleri_rowid=b.Rowid
GO