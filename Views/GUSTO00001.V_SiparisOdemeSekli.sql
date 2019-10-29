SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


CREATE view [GUSTO00001].[V_SiparisOdemeSekli] as  
select pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin from GUSTO00001.alsatEkAlanMetin
where pEkAlanTanimi = 32

GO