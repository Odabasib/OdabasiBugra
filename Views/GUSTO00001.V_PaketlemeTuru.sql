SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

 CREATE view [GUSTO00001].[V_PaketlemeTuru] as
 select s.stokkodu_rowid,
 case when 
	exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=1 and pOwnerID=s.StokKodu_rowid) and 
	(exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi=0 and pOwnerID=s.StokKodu_rowid) or not exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40  and pOwnerID=s.StokKodu_rowid))
	 then 'Tekli Pakete Koyulacak'
 when
	 exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=2 and pOwnerID=s.StokKodu_rowid) and
	 exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi>0 and pOwnerID=s.StokKodu_rowid) then 'Çoklu Pakete Koyulacak'
 when 
	 exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=1 and pOwnerID=s.StokKodu_rowid) and
	 exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi>0 and pOwnerID=s.StokKodu_rowid) then 'Tekli Paketlere Koyulduktan Sonra Çoklu Paketlere Koyulacak' 
 when 	
	not exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and pOwnerID=s.StokKodu_rowid) then 'Bu Stok İçin Paketleme Türü Tanımlanmamıştır.'
	 else 'Üretilecek Ürünün Ek Alanlarının Kontrol Edilmesi Gerekiyor.Lütfen Planlama Birimine Bilgi Veriniz!' end
 PaketlemeBicimi
 from GUSTO00001.StokKodu s
GO