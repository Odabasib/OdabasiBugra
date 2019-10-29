SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_CokluPaketEtiketKayitlariOlusturma] 

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

DECLARE CokluPaketBaslikBilgileri CURSOR FOR

select ise.IsEmri_rowid,ise.ldPlanlananIsEmriMiktari [İş Emri Adedi],s.StokKodu_rowid [StokKodu_Rowid],s.sAd [Stok Adı],tpc.ldSayi [Pakete Girecek Olan Ürün Sayısı],2  [bTekliCokluPaket],
case when ise.ldPlanlananIsEmriMiktari<tpc.ldSayi then 1
when ise.ldPlanlananIsEmriMiktari>=tpc.ldSayi then ceiling(ise.ldPlanlananIsEmriMiktari/tpc.ldSayi) end [Basılacak Çoklu Etiket Sayısı] ,'Çoklu Paketlenecek' [Paketleme Açıklaması],s.sKod [StokKodu],asb.pCari,
case when (select COUNT(*) from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid)=1 then
(select sUreticiKodu from GUSTO00001.UreticiKodu where pCari=asb.pCari and pStok=s.StokKodu_rowid) else s.sKod end [ÜreticiKodu],0,
case when len(asb.sReferansNo)!=0 then 
asb.sReferansNo else CONCAT(asb.sSeri,'-',asb.lNo) end [SiparişRefNo]

 from GUSTO00001.IsEmri ise
inner join (select pKokIsEmri,pBaglayanBelge from GUSTO00001.ASiparisIsEmriBaglanti where cTur='A')kok on kok.pKokIsEmri=ise.IsEmri_rowid
inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=kok.pBaglayanBelge
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
inner join GUSTO00001.IsEmriUrunler iu on iu.pIsemri=ise.IsEmri_rowid
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=iu.pStokKodu
inner join (select pOwnerID,ldSayi from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=41 and ldSayi=2)tp on tp.pOwnerID=s.StokKodu_rowid		 --Tekli Paket/Çoklu Paket Ek Alan Tanımı
inner join (select pOwnerID,ldSayi from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40 and ldSayi>0)tpc on tpc.pOwnerID=s.StokKodu_rowid	     --Çoklu Pakete Girecek Adet Ek Alan Tanımı
where exists (select * from GUSTO00001.IsEmriGerceklesenOpr opr
inner join GUSTO00001.IsEmriOperasyon op on op.IsEmriOperasyon_rowid=opr.pIsEmriOperasyon
where op.pOperasyonKodu=21 and opr.pIsemri=ise.IsEmri_rowid and CAST(opr.dtIslemBaslamaTarihi as date)=CAST(GETDATE() as date)) and not exists (select * from [Gusto].[Bpm_IsEmriEtiketBaslik] where pIsemri=ise.IsEmri_rowid)
and asb.pCari not in (739,900)


OPEN CokluPaketBaslikBilgileri
FETCH NEXT FROM CokluPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@ldCokluEtiketSayisi,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@sSipRefereransNo
WHILE @@FETCH_STATUS =0

BEGIN

insert into [Gusto].[Bpm_IsEmriEtiketBaslik] ([pIsemri],[ldIsEmriMiktari],[pStokKodu],[sStokAdi],[ldPaketeGirecekMiktar],[bTekliCokluPaket],nBasilacakTekliEtiketSayisi,nBasilacakCokluEtiketSayisi,[sUrunEtiketAciklama],[dtOlusturma],[tmOlusturma],sSiparisReferansNo,bMailIletimi)
values
(@pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,2,@ldTekliEtiketSayisi,@ldCokluEtiketSayisi,@EtiketAciklamasi,CAST(GETDATE() as date),replace(Convert (varchar(8),GetDate(), 108),':',''),@sSipRefereransNo,'H');

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

DECLARE @Sayac INT
SET @Sayac=0
WHILE (@Sayac<@ldCokluEtiketSayisi)
BEGIN

		if @Sayac>0 begin

			if ceiling(@KalanMiktar/@ldPaketeGirecekAdet)>1 begin

				set @KalanMiktar=@ldPaketeGirecekAdet

			end	

		end

		insert into [Gusto].[Bpm_IsEmriEtiketSatir] ([pIsEmriEtiketBaslik],[ldMiktar],[pStokKodu],[sStokKodu],[sStokAdi],sUreticiKodu,pIsemri,sPaketlemeTuru,bTekliCokluPaket,sSiparisReferansNo) values (@Bpm_IsEmriEtiketBaslik_Rowid,@KalanMiktar,@StokKodu_Rowid,@StokKodu,@StokAdi,@sUreticiKodu,@pIsemri,'Çoklu Paketlenecek',2,@sSipRefereransNo);
   
		set @KalanMiktar=@ldIsEmriMiktari-(select sum(ldMiktar) from [Gusto].[Bpm_IsEmriEtiketSatir] where [pIsEmriEtiketBaslik]=@Bpm_IsEmriEtiketBaslik_Rowid)

		set @Sayac = @Sayac + 1

END

FETCH NEXT FROM CokluPaketBaslikBilgileri INTO @pIsemri,@ldIsEmriMiktari,@StokKodu_Rowid,@StokAdi,@ldPaketeGirecekAdet,@bTekliCokluPaket,@ldCokluEtiketSayisi,@EtiketAciklamasi,@StokKodu,@pCari,@sUreticiKodu,@ldTekliEtiketSayisi,@sSipRefereransNo
		
END

CLOSE CokluPaketBaslikBilgileri

DEALLOCATE CokluPaketBaslikBilgileri

		
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