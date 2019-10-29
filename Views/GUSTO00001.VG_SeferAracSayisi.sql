SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_SeferAracSayisi] As  select sfr.pAracSefer, count(sfr.paracsefer) as AracSayisi from GUSTO00001.seferaracbaglanti sfr group by sfr.paracsefer
GO