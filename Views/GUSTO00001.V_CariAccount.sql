SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_CariAccount] as  
select pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin from GUSTO00001.cariEkAlanMetin
where pEkAlanTanimi = 29
GO