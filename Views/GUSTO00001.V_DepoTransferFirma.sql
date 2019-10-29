SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_DepoTransferFirma] as
select har.pHareket DepoHareketbaslik_Rowid,kul.sAd FirmaAdi from GUSTO00001.stkhrKulTan kul
inner join GUSTO00001.stkhrKulTanHar har on har.pKulTan=kul.stkhrKulTan_rowid
where pKulTanTanim=12
GO