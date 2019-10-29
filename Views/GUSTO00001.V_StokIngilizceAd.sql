SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_StokIngilizceAd] as select * from GUSTO00001.stokEkAlanMetin where pEkAlanTanimi = 33
GO