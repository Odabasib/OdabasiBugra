SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_IsEmriBilgileri] as
select top 100000000 ise.IsEmri_rowid,CONCAT(ise.sIsEmriSeri,' - ',ise.nIsEmriNo) 'İş Emri Seri No',dtIsEmriTarihi 'İş Emri Tarihi',
dtPlanlananBaslamaTarihi 'İş Emri Başlama Tarihi',dtPlanlananBitisTarihi 'İş Emri Bitiş Tarihi',
s.sKod 'Stok Kodu',s.sad 'Stok Adı',pt.PaketlemeBicimi,
case when len(ass.sAciklama)!=0 then ass.sAciklama else ise.sAciklama end 'Açıklama',ise.ldPlanlananIsEmriMiktari 'İş Emri Miktarı',case when asb.AlinanSiparisBaslik_rowid>0 then CONCAT(asb.sSeri,'-',asb.lNo) else 'Serbest İş Emri' end 'Sipariş Seri No',m.sAd 'Cari Adı',
pa.PaketeGirecekAdet,uret.sUreticiKodu 'Üretici Kodu',ise.nIsEmriNo 'İş Emri Numarası'
 from GUSTO00001.IsEmri ise
inner join GUSTO00001.IsEmriUrunler ur on ur.pIsemri=ise.IsEmri_rowid
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=ur.pStokKodu
left join GUSTO00001.ASiparisIsEmriBaglanti asi on asi.pIsEmri=ise.IsEmri_rowid
left join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=asi.pBaglayanBelge
left join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
left join GUSTO00001.MusteriSaticiKodu m on m.MusteriSaticiKodu_rowid=asb.pCari
left join Gusto00001.V_PaketlemeTuru pt on pt.StokKodu_Rowid=s.StokKodu_rowid
left join GUSTO00001.V_PaketeGirecekAdet pa on pa.pOwnerID=s.StokKodu_rowid
left join (select sUreticiKodu,pCari,pStok from GUSTO00001.UreticiKodu)uret on uret.pCari=m.MusteriSaticiKodu_rowid and uret.pStok=s.StokKodu_rowid
where ise.nIsemriDurum in (1,2,3,4) and (s.skod like 'M%') or (s.skod like 'SP%')
order by dtIsEmriTarihi,nIsEmriNo asc


GO