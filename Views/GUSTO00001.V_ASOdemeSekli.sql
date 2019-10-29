SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view  [GUSTO00001].[V_ASOdemeSekli] as
select pOwnerID,sMetin from GUSTO00001.alsatEkAlanMetin where pEkAlanTanimi = 32

GO