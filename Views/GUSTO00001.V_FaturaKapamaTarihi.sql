SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 create view [GUSTO00001].[V_FaturaKapamaTarihi] as select * from GUSTO00001.faturaEkAlanTarih where pEkAlanTanimi = 1
GO