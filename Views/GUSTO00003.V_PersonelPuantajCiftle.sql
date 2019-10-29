SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00003].[V_PersonelPuantajCiftle] as select 1 Sira, PersonelPuantaj_rowid from GUSTO00003.PersonelPuantaj union all select 2 Sira, PersonelPuantaj_rowid from GUSTO00003.PersonelPuantaj 
GO