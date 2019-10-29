SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_TekliEtiketKayitlariOlusturmaRenzel_2] 

AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


declare @pIsemri int;
declare @ldIsEmriMiktari decimal(22,6);
declare @StokKodu_Rowid int;
declare @StokAdi varchar(255);
declare @StokKodu varchar(255);
declare @ldPaketeGirecekAdet int;
declare @ldCokluEtiketSayisi int;
declare @ldTekliEtiketSayisi int;
declare @EtiketAciklamasi varchar(100);
declare @bTekliCokluPaket int;
declare @pCari int;
declare @sUreticiKodu varchar(50);
declare @sSipRefereransNo varchar(100);
declare @sYilinKacinciHaftasi varchar(10);

DECLARE TekliPaketBaslikBilgileri CURSOR FOR

select ise.IsEmri_rowid,ise.ldPlanlananIsEmriMiktari [İş Emri Adedi],s.StokKodu_rowid [StokKodu_Rowid],case when len(rz.sMetin)!=0 then rz.sMetin else s.sAd end  [Renzel Stok Adı],0 [Pakete Girecek Olan Ürün Sayısı],1  [bTekliCokluPaket],'Sadece Tekli Paketlenecek' [Paketleme Açıklaması],s.sKod [StokKodu],asb.pCari,
case when (select COUNT(*) from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid)=1 then
(select sUreticiKodu from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid) else s.sKod end [ÜreticiKodu],ise.ldPlanlananIsEmriMiktari,0,
case when len(asb.sReferansNo)!=0 then 
asb.sReferansNo else CONCAT(asb.sSeri,'-',asb.lNo) end [SiparişRefNo],
concat(right(YEAR(GETDATE()),2),case when len(Datepart(week,ass.dtTeslimTarihi))=2 then convert(varchar(2),Datepart(week,ass.dtTeslimTarihi)) when len(Datepart(week,ass.dtTeslimTarihi))=1 then concat('0',convert(varchar(2),Datepart(week,ass.dtTeslimTarihi))) end) [Yılın Kaçıncı Haftası]
 from GUSTO00001.IsEmri ise
inner join (select pKokIsEmri,pBaglayanBelge from GUSTO00001.ASiparisIsEmriBaglanti where cTur='A')kok on kok.pKokIsEmri=ise.IsEmri_rowid
inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=kok.pBaglayanBelge
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
inner join GUSTO00001.IsEmriUrunler iu on iu.pIsemri=ise.IsEmri_rowid
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=iu.pStokKodu
left join (select * from GUSTO00001.stokEkAlanMetin where pEkAlanTanimi=42)rz on rz.pOwnerID=s.StokKodu_rowid 
inner join (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=1)tp on tp.pOwnerID=s.StokKodu_rowid     --Tekli Paket/Çoklu Paket Ek Alan Tanımı
where not exists (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and pOwnerID=s.StokKodu_rowid)				   --Çoklu Pakete Girecek Adet Ek Alan Tanımı
and  exists (select * from GUSTO00001.IsEmriGerceklesenOpr opr
inner join GUSTO00001.IsEmriOperasyon op on op.IsEmriOperasyon_rowid=opr.pIsEmriOperasyon
where op.pOperasyonKodu=21 and opr.pIsemri=ise.IsEmri_rowid and CAST(opr.dtIslemBaslamaTarihi as date)=CAST(GETDATE() as date)) and not exists (select * from [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] where pIsemri=ise.IsEmri_rowid)
and asb.pCari=739

union

select ise.IsEmri_rowid,ise.ldPlanlananIsEmriMiktari [İş Emri Adedi],s.StokKodu_rowid [StokKodu_Rowid],case when len(rz.sMetin)!=0 then rz.sMetin else s.sAd end  [Renzel Stok Adı],0 [Pakete Girecek Olan Ürün Sayısı],1  [bTekliCokluPaket],'Sadece Tekli Paketlenecek' [Paketleme Açıklaması],s.sKod [StokKodu],asb.pCari,
case when (select COUNT(*) from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid)=1 then
(select sUreticiKodu from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid) else s.sKod end [ÜreticiKodu],ise.ldPlanlananIsEmriMiktari,0,
case when len(asb.sReferansNo)!=0 then 
asb.sReferansNo else CONCAT(asb.sSeri,'-',asb.lNo) end [SiparişRefNo],
concat(right(YEAR(GETDATE()),2),case when len(Datepart(week,ass.dtTeslimTarihi))=2 then convert(varchar(2),Datepart(week,ass.dtTeslimTarihi)) when len(Datepart(week,ass.dtTeslimTarihi))=1 then concat('0',convert(varchar(2),Datepart(week,ass.dtTeslimTarihi))) end) [Yılın Kaçıncı Haftası]
 from GUSTO00001.IsEmri ise
inner join (select pKokIsEmri,pBaglayanBelge from GUSTO00001.ASiparisIsEmriBaglanti where cTur='A')kok on kok.pKokIsEmri=ise.IsEmri_rowid
inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=kok.pBaglayanBelge
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
inner join GUSTO00001.IsEmriUrunler iu on iu.pIsemri=ise.IsEmri_rowid
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=iu.pStokKodu
left join (select * from GUSTO00001.stokEkAlanMetin where pEkAlanTanimi=42)rz on rz.pOwnerID=s.StokKodu_rowid 
inner join (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=1)tp on tp.pOwnerID=s.StokKodu_rowid     --Tekli Paket/Çoklu Paket Ek Alan Tanımı
inner join (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi=0)tp1 on tp1.pOwnerID=s.StokKodu_rowid     --Tekli Paket/Çoklu Paket Ek Alan Tanımı
where	 exists (select * from GUSTO00001.IsEmriGerceklesenOpr opr
inner join GUSTO00001.IsEmriOperasyon op on op.IsEmriOperasyon_rowid=opr.pIsEmriOperasyon
where op.pOperasyonKodu=21 and opr.pIsemri=ise.IsEmri_rowid and CAST(opr.dtIslemBaslamaTarihi as date)=CAST(GETDATE() as date)) and not exists (select * from [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] where pIsemri=ise.IsEmri_rowid)
and asb.pCari=739


OPEN TekliPaketBaslikBilgileri
FETCH NEXT FROM TekliPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@ldCokluEtiketSayisi,@sSipRefereransNo,@sYilinKacinciHaftasi
WHILE @@FETCH_STATUS =0

BEGIN

insert into [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] ([pIsemri],[ldIsEmriMiktari],[pStokKodu],[sStokAdi],[ldPaketeGirecekMiktar],[bTekliCokluPaket],nBasilacakTekliEtiketSayisi,nBasilacakCokluEtiketSayisi,[sUrunEtiketAciklama],[dtOlusturma],[tmOlusturma],sSiparisReferansNo,bMailIletimi,sSiparisYilHafta)
values
(@pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,1,@ldTekliEtiketSayisi,@ldCokluEtiketSayisi,@EtiketAciklamasi,CAST(GETDATE() as date),replace(Convert (varchar(8),GetDate(), 108),':',''),@sSipRefereransNo,'H',@sYilinKacinciHaftasi);

declare @Bpm_IsEmriEtiketBaslik_Rowid int;
set @Bpm_IsEmriEtiketBaslik_Rowid=SCOPE_IDENTITY();

--Teker Teker Herbir Ürün için Oluşacak Etiket

DECLARE @Sayac1 INT
SET @Sayac1=0
WHILE (@Sayac1<@ldIsEmriMiktari)
BEGIN

		insert into [Gusto].[Bpm_IsEmriEtiketSatirRenzel] ([pIsEmriEtiketBaslik],[ldMiktar],[pStokKodu],[sStokKodu],[sStokAdi],sUreticiKodu,pIsemri,sPaketlemeTuru,bTekliCokluPaket,sSiparisReferansNo) values (@Bpm_IsEmriEtiketBaslik_Rowid,1,@StokKodu_Rowid,@StokKodu,@StokAdi,@sUreticiKodu,@pIsemri,@EtiketAciklamasi,1,@sSipRefereransNo);

		set @Sayac1 = @Sayac1 + 1

END

FETCH NEXT FROM TekliPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@ldCokluEtiketSayisi,@sSipRefereransNo,@sYilinKacinciHaftasi
		
END

CLOSE TekliPaketBaslikBilgileri

DEALLOCATE TekliPaketBaslikBilgileri

		
COMMIT TRANSACTION
END TRY
BEGIN CATCH
DECLARE 
@ErrorMessage NVARCHAR(4000),
@ErrorSeverity INT,
@ErrorState INT,
@ErrorLine int;
SELECT 
--@ErrorLine=ERROR_LINE(),
@ErrorMessage = ERROR_MESSAGE(),
@ErrorSeverity = ERROR_SEVERITY(),
@ErrorState = ERROR_STATE();
RAISERROR (
@ErrorLine ,
@ErrorMessage,
@ErrorSeverity,
@ErrorState
);
ROLLBACK TRANSACTION
END CATCH
GO