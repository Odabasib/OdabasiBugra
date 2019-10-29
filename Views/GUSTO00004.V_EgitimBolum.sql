SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00004].[V_EgitimBolum] as select distinct sbirimadi, pplan from GUSTO00004.egitimatama
GO