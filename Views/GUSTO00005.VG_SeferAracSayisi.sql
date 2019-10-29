SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_SeferAracSayisi] As  select sfr.pAracSefer, count(sfr.paracsefer) as AracSayisi from GUSTO00005.seferaracbaglanti sfr group by sfr.paracsefer
GO