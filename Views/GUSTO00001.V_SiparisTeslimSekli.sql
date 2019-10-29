SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create view [GUSTO00001].[V_SiparisTeslimSekli] as  
select pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin from GUSTO00001.alsatEkAlanMetin
where pEkAlanTanimi = 10

GO