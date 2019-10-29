SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_SonFaturaTutari] as select *from GUSTO00001.faturaEkAlanSayi where pEkAlanTanimi = 2 
GO