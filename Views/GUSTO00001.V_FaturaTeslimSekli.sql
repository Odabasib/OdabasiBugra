SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_FaturaTeslimSekli] as
select pOwnerID,sMetin from GUSTO00001.faturaEkAlanMetin where pEkAlanTanimi = 1
GO