SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

Create view [GUSTO00001].[V_SatisTemsilcisi] as
select cariKulTanKod_rowid,pKod,pKulTan from GUSTO00001.cariKulTanKod where pKulTan in 
(select CariKultan_rowid from GUSTO00001.cariKulTan where pKulTanTanim=7)
GO