SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_UreticiKodAd] as 
select pHareket,tanim.sKod,uk.sUreticiKodu from GUSTO00001.alsatKulTanHar har
inner join GUSTO00001.alsatKulTan tanim on har.pKulTan = tanim.alsatKulTan_rowid
inner join GUSTO00001.AlinanSiparisSatir satir on har.pHareket = satir.AlinanSiparisSatir_rowid
inner join GUSTO00001.StokKodu sk on satir.pStokKodu = sk.StokKodu_rowid
inner join GUSTO00001.UreticiKodu uk on sk.StokKodu_rowid = uk.pStok and uk.pCari = (select MusteriSaticiKodu_Rowid from  GUSTO00001.MusteriSaticiKodu where sKod = tanim.sKod)
 where tanim.pKulTanTanim = 11
GO