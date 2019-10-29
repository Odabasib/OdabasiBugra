SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_SiparisNotu] as
select alsatNotlar_rowid,pOwnerID,sMetin,pNotAdiTanimi from GUSTO00001.alsatNotlar
where pNotAdiTanimi= 7
GO