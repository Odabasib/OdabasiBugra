SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_FaturaSiparisBaglanti] as
select ass.sSeri,ass.lNo,sh.StokHareket_rowid,asb.sReferansNo,asb.pPersonel from GUSTO00001.AktarmaBaglanti ab
inner join Gusto00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid = ab.pKaynak
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid = ass.pBaslik
inner join GUSTO00001.StokHareket sh on sh.StokHareket_rowid = ab.pHedef
where ab.sKaynakTuru='AS' and ab.sHedefTuru='CI'
GO