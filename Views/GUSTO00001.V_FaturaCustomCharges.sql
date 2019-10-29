SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_FaturaCustomCharges] as
select * from GUSTO00001.FaturaAltiMasraf where pMasrafKodu = 1
GO