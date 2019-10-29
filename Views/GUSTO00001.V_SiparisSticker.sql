SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_SiparisSticker] as
select alsatKulTanHar_rowid,cHareketTuru,pHareket,pKulTan,sAd,AlinanSiparisBaslik_rowid from GUSTO00001.alsatKulTanHar har
inner join GUSTO00001.alsatKulTan al on al.alsatKulTan_rowid=har.pKulTan
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=har.pHareket
where pKulTanTanim=4
GO