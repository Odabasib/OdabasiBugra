SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_FreighCost] as
select * from GUSTO00001.StokHareket  
where cStokHizmetDemirbas ='H'
GO