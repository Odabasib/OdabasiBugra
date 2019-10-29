SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


CREATE view [GUSTO00001].[V_SatisTemsilcisi_Ad] as  
select cariKulTan_rowid,pKulTanTanim,sAd,sKod from GUSTO00001.cariKulTan where pKulTanTanim = 7

GO