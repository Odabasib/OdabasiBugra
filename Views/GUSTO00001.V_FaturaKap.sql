SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_FaturaKap] as select *from  GUSTO00001.faturaEkAlanMetin where pEkAlanTanimi =16
GO