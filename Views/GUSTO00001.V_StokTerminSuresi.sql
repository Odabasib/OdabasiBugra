SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_StokTerminSuresi] as 
select *from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi = 14
GO