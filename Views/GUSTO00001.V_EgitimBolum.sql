SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00001].[V_EgitimBolum] as select distinct sbirimadi, pplan from GUSTO00001.egitimatama
GO