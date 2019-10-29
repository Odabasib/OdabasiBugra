SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view  [GUSTO00001].[V_FaturaFirmaYetkili] as
select pEkAlanTanimi,pOwnerID,sMetin from GUSTO00001.faturaEkAlanMetin  where pEkAlanTanimi = 37
GO