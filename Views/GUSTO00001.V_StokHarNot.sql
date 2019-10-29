SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_StokHarNot] as select pOwnerID,sMetin from GUSTO00001.stkhrNotlar where pNotAdiTanimi = 4
GO