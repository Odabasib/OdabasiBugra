SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

Create view [GUSTO00001].[V_SiparisNotTanimi] as
select alsatNotlar_rowid,pOwnerID,sMetin,pNotAdiTanimi from GUSTO00001.alsatNotlar
where pNotAdiTanimi= 5
GO