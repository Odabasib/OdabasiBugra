SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_TekliEtiketKayitlariOlusturmaRenzel_1] 

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

select ise.IsEmri_rowid,ise.ldPlanlananIsEmriMiktari [İş Emri Adedi],s.StokKodu_rowid [StokKodu_Rowid],case when len(rz.sMetin)!=0 then rz.sMetin else s.sAd end  [Renzel Stok Adı],tpc.ldSayi [Pakete Girecek Olan Ürün Sayısı],1  [bTekliCokluPaket],
case when ise.ldPlanlananIsEmriMiktari<tpc.ldSayi then 1
when ise.ldPlanlananIsEmriMiktari>=tpc.ldSayi then ceiling(ise.ldPlanlananIsEmriMiktari/tpc.ldSayi) end [Basılacak Etiket Sayısı] ,'Tekli Paketlendikten Sonra Çoklu Pakete Koyulacak' [Paketleme Açıklaması],s.sKod [StokKodu],asb.pCari,
case when (select COUNT(*) from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid)=1 then
(select sUreticiKodu from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid) else s.sKod end [ÜreticiKodu],cast(ise.ldPlanlananIsEmriMiktari as int) ldPlanlananIsEmriMiktari,
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
inner join (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=1)tp on tp.pOwnerID=s.StokKodu_rowid		 --Tekli Paket/Çoklu Paket Ek Alan Tanımı
inner join (select * from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi>0)tpc on tpc.pOwnerID=s.StokKodu_rowid	 --Çoklu Pakete Girecek Adet Ek Alan Tanımı
where exists (select * from GUSTO00001.IsEmriGerceklesenOpr opr
inner join GUSTO00001.IsEmriOperasyon op on op.IsEmriOperasyon_rowid=opr.pIsEmriOperasyon
where op.pOperasyonKodu=21 and opr.pIsemri=ise.IsEmri_rowid and CAST(opr.dtIslemBaslamaTarihi as date)=CAST(GETDATE() as date)) and not exists (select * from [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] where pIsemri=ise.IsEmri_rowid)
and asb.pCari =739


OPEN TekliPaketBaslikBilgileri
FETCH NEXT FROM TekliPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@ldCokluEtiketSayisi,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@sSipRefereransNo,@sYilinKacinciHaftasi
WHILE @@FETCH_STATUS =0

BEGIN

insert into [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] ([pIsemri],[ldIsEmriMiktari],[pStokKodu],[sStokAdi],[ldPaketeGirecekMiktar],[bTekliCokluPaket],nBasilacakCokluEtiketSayisi,nBasilacakTekliEtiketSayisi,[sUrunEtiketAciklama],[dtOlusturma],[tmOlusturma],sSiparisReferansNo,bMailIletimi,sSiparisYilHafta)
values
(@pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,1,@ldCokluEtiketSayisi,@ldTekliEtiketSayisi,@EtiketAciklamasi,CAST(GETDATE() as date),replace(Convert (varchar(8),GetDate(), 108),':',''),@sSipRefereransNo,'H',@sYilinKacinciHaftasi);

declare @Bpm_IsEmriEtiketBaslik_Rowid int;
set @Bpm_IsEmriEtiketBaslik_Rowid=SCOPE_IDENTITY();

declare @ldEtiketMiktarlari decimal(22,6);
declare @KalanMiktar decimal(22,6);

if(@ldIsEmriMiktari>@ldPaketeGirecekAdet) begin
	set @KalanMiktar=@ldPaketeGirecekAdet;
end

else if (@ldIsEmriMiktari<=@ldPaketeGirecekAdet) begin
	set @KalanMiktar=@ldIsEmriMiktari;
end

--Tekrar Paketlendikten Sonra Çoklu Paket Etiketlerinin Oluşması

DECLARE @Sayac INT
SET @Sayac=0
WHILE (@Sayac<@ldCokluEtiketSayisi)
BEGIN

		if @Sayac>0 begin

			if ceiling(@KalanMiktar/@ldPaketeGirecekAdet)>1 begin

				set @KalanMiktar=@ldPaketeGirecekAdet

			end	

		end

		insert into [Gusto].[Bpm_IsEmriEtiketSatirRenzel] ([pIsEmriEtiketBaslik],[ldMiktar],[pStokKodu],[sStokKodu],[sStokAdi],sUreticiKodu,pIsemri,sPaketlemeTuru,bTekliCokluPaket,sSiparisReferansNo) values (@Bpm_IsEmriEtiketBaslik_Rowid,@KalanMiktar,@StokKodu_Rowid,@StokKodu,@StokAdi,@sUreticiKodu,@pIsemri,'Çoklu Paket',2,@sSipRefereransNo);
   
		set @KalanMiktar=@ldIsEmriMiktari-(select sum(ldMiktar) from [Gusto].[Bpm_IsEmriEtiketSatirRenzel] where [pIsEmriEtiketBaslik]=@Bpm_IsEmriEtiketBaslik_Rowid)

		set @Sayac = @Sayac + 1

END


--Teker Teker Herbir Ürün için Oluşacak Etiket

DECLARE @Sayac1 INT
SET @Sayac1=0
WHILE (@Sayac1<@ldTekliEtiketSayisi)
BEGIN

		insert into [Gusto].[Bpm_IsEmriEtiketSatirRenzel] ([pIsEmriEtiketBaslik],[ldMiktar],[pStokKodu],[sStokKodu],[sStokAdi],sUreticiKodu,pIsemri,sPaketlemeTuru,bTekliCokluPaket,
		sSiparisReferansNo) 
		
		--values (@Bpm_IsEmriEtiketBaslik_Rowid,1,@StokKodu_Rowid,@StokKodu,@StokAdi,@sUreticiKodu,@pIsemri,@EtiketAciklamasi,1,@sSipRefereransNo);

				
		select @Bpm_IsEmriEtiketBaslik_Rowid,
				case when exists (select * from GUSTO00001.stokEkAlanSayi where pOwnerID=StokKodu_rowid and pEkAlanTanimi=43 and ldSayi>0) then 
				(select ldSayi from GUSTO00001.stokEkAlanSayi where pOwnerID=StokKodu_rowid and pEkAlanTanimi=43 and ldSayi>0) else 1 end,
				StokKodu_rowid,sKod,sAd,@sUreticiKodu,@pIsemri,@EtiketAciklamasi,1,@sSipRefereransNo
				from GUSTO00001.StokKodu where StokKodu_rowid=@StokKodu_Rowid;


		set @Sayac1 = @Sayac1 + 1

END


FETCH NEXT FROM TekliPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@ldCokluEtiketSayisi,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@sSipRefereransNo,@sYilinKacinciHaftasi
		
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
@ErrorLine=ERROR_LINE(),
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