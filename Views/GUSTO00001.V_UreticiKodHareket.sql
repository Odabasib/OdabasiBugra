SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view  [GUSTO00001].[V_UreticiKodHareket] as
select pHareket,tanim.sKod from GUSTO00001.alsatKulTanHar har
inner join GUSTO00001.alsatKulTan tanim on har.pKulTan = tanim.alsatKulTan_rowid where tanim.pKulTanTanim = 11
GO