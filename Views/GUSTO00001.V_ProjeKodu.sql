SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view  [GUSTO00001].[V_ProjeKodu] as
select pOwnerID,sMetin from GUSTO00001.stokEkAlanMetin where pEkAlanTanimi = 13
and cSahibinTuru = 'SK' 
GO