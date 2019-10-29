SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

 CREATE view [GUSTO00001].[V_HareketGormeyenCariler] as 
select MusteriSaticiKodu_rowid,sKod,sAd,0 tutar,0 doviz ,'Yeni Cari' aciklama from GUSTO00001.MusteriSaticiKodu msk
inner join GUSTO00001.MusteriSaticiDetayi msd on msk.MusteriSaticiKodu_rowid = msd.pMusteriSaticiKodu
 where msk.nChildCount = 0 and msk.MusteriSaticiKodu_rowid not in 
(select pCariKodID from GUSTO00001.CariHareket) and msk.sKod like '120.01.%'
GO