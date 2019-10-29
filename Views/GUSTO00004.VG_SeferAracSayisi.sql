SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_SeferAracSayisi] As  select sfr.pAracSefer, count(sfr.paracsefer) as AracSayisi from GUSTO00004.seferaracbaglanti sfr group by sfr.paracsefer
GO