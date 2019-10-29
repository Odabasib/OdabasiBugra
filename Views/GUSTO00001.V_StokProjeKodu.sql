SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view  [GUSTO00001].[V_StokProjeKodu] as
select pOwnerID,sMetin from Gusto00001.stokEkAlanMetin where pEkAlanTanimi = 13
GO