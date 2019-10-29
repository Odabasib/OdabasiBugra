SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_FaturaNet] as select *from  GUSTO00001.faturaEkAlanMetin where pEkAlanTanimi =4
GO