SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
Create View [GUSTO00001].[V_FasonTedarikciler] as
select pHareket,B.sKod,B.sAd, MusteriSaticiKodu_rowid from GUSTO00001.stkhrKulTanHar A
inner join GUSTO00001.stkhrKulTan B on A.pKulTan=B.stkhrKulTan_rowid
inner join GUSTO00001.KulTanTanimi C on B.pKulTanTanim=C.KulTanTanimi_rowid
inner join GUSTO00001.MusteriSaticiKodu D on B.sKod=D.sKod
where C.sAd='Fason Tedarikçi'
GO