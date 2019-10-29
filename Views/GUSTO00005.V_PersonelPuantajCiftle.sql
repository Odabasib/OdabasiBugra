SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00005].[V_PersonelPuantajCiftle] as select 1 Sira, PersonelPuantaj_rowid from GUSTO00005.PersonelPuantaj union all select 2 Sira, PersonelPuantaj_rowid from GUSTO00005.PersonelPuantaj 
GO