SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_IsEmriBilgileri_Gerceklesme] as

select altis.IsEmri_rowid,asb.sReferansNo [Sipariş Referans No],asb.sSeri [Sipariş Seri],asb.lNo [Sipariş Seri No],ass.dtTarih [Sipariş Tarihi],ass.dtTeslimTarihi [Sipariş Teslim Tarihi],ass.ldMalMiktari1Birim [Sipariş Miktarı],
m.sKod [Sİpariş Eden Cari Kodu],m.sAd [Sipariş Eden Cari Adı],
case when kok.nseviye=1 then 'Ana İş Emri' else 'Yarımamül İş Emri' end [İş Emri Türü],
CONCAT(s1.sKod,' - ',s1.sAd) [Üretilecek Ürün]

from GUSTO00001.V_KokIsEmri kok
inner join GUSTO00001.IsEmri ise on ise.IsEmri_rowid=kok.pkokISemri
inner join (select * from GUSTO00001.ASiparisIsEmriBaglanti where cTur='A')asip on asip.pIsEmri= case when kok.nseviye=1 then kok.pkokISemri else kok.pbaglayanISemri end  and ise.IsEmri_rowid=asip.pIsEmri
inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=asip.pBaglayanBelge  --Ana İş Emrine Bağlı Sipariş Bilgileri
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik  --Ana İş Emrine Bağlı Sipariş Bilgileri
left join GUSTO00001.MusteriSaticiKodu m on m.MusteriSaticiKodu_rowid=asb.pCari
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=ass.pStokKodu --Ana İş Emrine Bağlı Sipariş Edilen Stok
left join GUSTO00001.IsEmri altis on altis.IsEmri_rowid=case when kok.nseviye=1 then kok.pkokISemri else kok.pBaglananIsemri end
--left join  GUSTO00001.uretimNotlar ienot on ienot.pOwnerID=altis.IsEmri_rowid and cSahibinTuru='İE'
inner join GUSTO00001.IsEmriUrunler ur on ur.pIsemri=kok.pBaglananIsemri  --ALt İş Emrine Bağlı Ürünler
inner join GUSTO00001.StokKodu s1 on s1.StokKodu_rowid=ur.pStokKodu --Ana İş Emrine Bağlı Sipariş Edilen Stok
--inner join GUSTO00001.IzlemeKodu iz on iz.IzlemeKodu_rowid=ur.pIzlemeKodu and iz.pStokKodu=s1.StokKodu_rowid --ALt İş Emrinde yer alan Yarımamğül vb
--inner join GUSTO00001.IsEmriOperasyon iop on iop.pIsemri=kok.pBaglananIsemri --ALt İş Emri operasyonları
--inner join GUSTO00001.OperasyonKodu op on op.OperasyonKodu_rowid=iop.pOperasyonKodu --ALt İş Emri operasyonları



GO