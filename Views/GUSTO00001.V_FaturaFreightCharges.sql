SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_FaturaFreightCharges] as
select * from GUSTO00001.FaturaAltiMasraf where pMasrafKodu = 2
GO