SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_FaturaNotu] as
select pOwnerID,sMetin,pNotAdiTanimi from  GUSTO00001.faturaNotlar
where pNotAdiTanimi= 3
GO