SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_AlinanSiparisOlustur_MusteriOnayi] 

	@pKart int,
	@pOlusturanKullanici int,
	@pFaaliyet int

AS 
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @pCari int;
declare @dtTeklifTarihi datetime;
declare @dtTeslimTarihi datetime;
declare @sAciklama varchar(255);
declare @pDoviz int;
declare @pPersonel int;

 if ((select count(*) from Gusto.Kullanici k
inner join GUSTO00001.PersonelDetayi pd on pd.sGustoKullanici=k.Adi
where k.Kullanici_rowid=@pOlusturanKullanici)=1) begin

	set @pPersonel=(select pd.pPersonelKodu from Gusto.Kullanici k
	inner join GUSTO00001.PersonelDetayi pd on pd.sGustoKullanici=k.Adi
	where k.Kullanici_rowid=@pOlusturanKullanici)

end

else begin

set @pPersonel=1172; -- Personel Tanımlaması yapılmadığı zaman siparişin sağlıklı olması için pasif bir personel kartı create edilmiştir.1172	BPM Satis Personel

end

select @pCari=isnull(pCari,0),@dtTeklifTarihi=isnull(dtTeklif,''),@dtTeslimTarihi=isnull(dtTermin,''),
@sAciklama=isnull(sAciklama,''),@pDoviz=isnull(pDoviz,0) 
from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart;

declare @sSeri varchar(15);
declare @nSeriNo int;
declare @AlinanSiparisBaslik_Rowid int;

declare @ldKur decimal(22,6);
declare @pDovizYeri int;
declare @cDovizTuru int;
declare @pOdemeKosulu int;
declare @nVade int;
declare @nVadeSureTipi int;
declare @fYuzde real;
declare @dtOriginalTarih date;
declare @ldSatirOdemePlaniTutar decimal(22,6);

select 
@ldKur=case when @pDoviz>0 then isnull(pDoviz_Kur,0) else 1 end,
@pDovizYeri=case when @pDoviz>0 then isnull(pDoviz_DovizYeri,0) else 0 end,
@cDovizTuru=case when @pDoviz>0 then case when ISNULL(pDoviz_DovizTuru,'')=1 then '2' 
when ISNULL(pDoviz_DovizTuru,'')=0 then '1'
end else '' end ,@pOdemeKosulu=isnull(pOdemeKosulu,0) from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart

if(@pOdemeKosulu>0 and (select COUNT(*) from GUSTO00001.OdemeKosullariVadesi where pOdemeKosulu=@pOdemeKosulu)=1) begin

select @nVade=nSure,@nVadeSureTipi=case when cGunAy='G' then 1 when cGunAy='A' then 2 End,@fYuzde=fYuzdeKac 
from GUSTO00001.OdemeKosullariVadesi where pOdemeKosulu=@pOdemeKosulu

	if (@nVadeSureTipi=1) begin  --Gün

	set @dtOriginalTarih=(select DATEADD(DAY,@nVade,@dtTeklifTarihi));

	end

	else if (@nVadeSureTipi=2) begin  --Ay

	set @dtOriginalTarih=(select DATEADD(MONTH,@nVade,@dtTeklifTarihi));

	end

	else begin

	set @dtOriginalTarih=@dtTeklifTarihi;

	end

end

declare @dtOlusturma date;
declare @tmOlusturma varchar(10);

set @dtOlusturma=(select CAST(GETDATE() as date));
set @tmOlusturma=(select replace(Convert (varchar(8),GetDate(), 108),':',''));

set @sAciklama=(select CONCAT(SKODU,' Verilen Teklif BPM Kartı') from Gusto.EPMKart where EPMKART_ROWID=@pKart);
set @sSeri='ASB'
set @nSeriNo=(select nNo+1 from GUSTO00001.Seri where sSeri=@sSeri and nHareketTuru=3000)

insert GUSTO00001.AlinanSiparisBaslik (sSeri,lNo,dtTarih,dtTeslimTarihi,tmTeslimZamani,cCariTuru,pCari,cSiparisBilgiFarkli,pPersonel,cOnayDurumu,
cTeslimatDurumu,pOlusturanKullanici,dtOlusturma,tmOlusturma,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi)

values (@sSeri,@nSeriNo,@dtTeklifTarihi,@dtTeslimTarihi,0,'C',@pCari,'H',@pPersonel,'G',0,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma,'A','H','H');

set @AlinanSiparisBaslik_Rowid=SCOPE_IDENTITY();

declare @nSira int;
declare @pStokKodu int;
declare @ldMalMiktari1Birim decimal(22,6);
declare @ldKDVOrani int;
declare @ldBirimFiyatKDVsiz decimal(22,6);
declare @ldBirimFiyatKDVli decimal(22,6);
declare @ldToplamFiyatKDVsiz decimal(22,6);
declare @ldToplamKDV decimal(22,6);
declare @ldIskontoSonrasiTutar decimal(22,6);
declare @sSatirAciklama varchar(50);

--HareketDövizli Tutarlar
declare @ldHrkdBirimFiyatKDVsiz decimal(22,6);
declare @ldHrkdBirimFiyatKDVli decimal(22,6);
declare @ldHrkdToplamFiyatKDVsiz decimal(22,6);
declare @ldHrkdToplamKDV decimal(22,6);
declare @ldHrkdIskontoSonrasiTutar decimal(22,6);
declare @AlinanSiparisSatir_Rowid int;

DECLARE VerilenTeklifSatirlari CURSOR FOR

select ROW_NUMBER() OVER(ORDER BY ROWID DESC),case when bStokMevcutDegil=1 and exists (select * from GUSTO00001.StokKodu where StokKodu_rowid=pOlusanJenerikKod) then pOlusanJenerikKod
else pStokKodu end,
isnull(ldMiktar,0),
isnull(ldKDVOrani,0),
isnull(ldBirimFiyat,0),
isnull(round(ldBirimFiyat+((ldBirimFiyat*ldKDVOrani)/100),2),0),
isnull(round(ldKDVMatrahi,2),0),
isnull(round(ldKDVTutari,2),0),
isnull(round(ldKDVMatrahi,2),0),
isnull(ldBirimFiyat_Doviz,0),
isnull(round(((ldBirimFiyat+((ldBirimFiyat*ldKDVOrani)/100))/@ldKur),2),0),
isnull(round(ldKDVMatrahi_Doviz,2),0),
isnull(round(ldKDVTutari_Doviz,2),0),
isnull(round(ldKDVMatrahi_Doviz,2),0),
'Direkt Teklif Satırı'

from Gusto.BPMCG_VTeklifSatirlari where PPARENT in (select ROWID from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart) and  
ROWID in (select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2897 and PFAALIYET=@pFaaliyet)  
--Verin Teklif Müşteri Onay Faaliyetinde ;Sipariş Oluşturmak için seçilen Teklif Satırı

union all

select ROW_NUMBER() OVER(ORDER BY ROWID DESC),pAltStok,
isnull(ldAltMiktar,0),
isnull(ldAltKDVOrani,0),
isnull(ldAltBirimFiyat,0),
isnull(round(ldAltBirimFiyat+((ldAltBirimFiyat*ldAltKDVOrani)/100),2),0),
isnull(round(ldAltKDVMatrah,2),0),
isnull(round(ldAltKDVTutari,2),0),
isnull(round(ldAltKDVMatrah,2),0),
isnull(ldAltBirimFiyat_Doviz,0),
isnull(round(((ldAltBirimFiyat+((ldAltBirimFiyat*ldAltKDVOrani)/100))/@ldKur),2),0),
isnull(round(ldAltKDVMatrah_Doviz,2),0),
isnull(round(ldAltKDVTutari_Doviz,2),0),
isnull(round(ldAltKDVMatrah_Doviz,2),0),
'Alternatif Teklif Satırı'

from Gusto.BPMCG_VTAlternatifStoklar where  PPARENT in (select ROWID from Gusto.BPMCG_VTeklifSatirlari where PPARENT in (select ROWID
 from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart)) and ROWID in 
 (select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2898 and PFAALIYET=@pFaaliyet)  
--Verin Teklif Müşteri Onay Faaliyetinde ;Sipariş Oluşturmak için seçilen Alternatif Teklif Satırı


OPEN VerilenTeklifSatirlari
FETCH NEXT FROM VerilenTeklifSatirlari INTO @nSira,@pStokKodu,@ldMalMiktari1Birim,@ldKDVOrani,@ldBirimFiyatKDVsiz,@ldBirimFiyatKDVli,
@ldToplamFiyatKDVsiz,@ldToplamKDV,@ldIskontoSonrasiTutar,@ldHrkdBirimFiyatKDVsiz,@ldHrkdBirimFiyatKDVli,@ldHrkdToplamFiyatKDVsiz,
@ldHrkdToplamKDV,@ldHrkdIskontoSonrasiTutar,@sSatirAciklama

WHILE @@FETCH_STATUS =0

BEGIN

INSERT into  Gusto00001.AlinanSiparisSatir 
(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,
cKapatmaBirimi,ldKDVOrani,ldBirimFiyatKDVsiz,ldBirimFiyatKDVli,ldToplamFiyatKDVsiz,ldToplamKDV,
ldIskontoSonrasiTutar,dtTarih,nSira,cCariTuru,pCari,pOlusturanKullanici,dtOlusturma,tmOlusturma,
cBaglanti,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,cSatirOnayDurumu,
ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,ldhrkdToplamKDV,ldhrkdIskontoSonrasiTutar,pDoviz,pDovizYeri,cKurTuru,sAciklama)

values

(@AlinanSiparisBaslik_Rowid,@sSeri,@nSeriNo,'S',@pStokKodu,@dtTeslimTarihi,'1',@ldMalMiktari1Birim,
'1',@ldKDVOrani,@ldBirimFiyatKDVsiz,@ldBirimFiyatKDVli,@ldToplamFiyatKDVsiz,@ldToplamKDV,
@ldIskontoSonrasiTutar,@dtTeklifTarihi,@nSira,'C',@pCari,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma,
'Z','A','H','H','G',
@ldHrkdBirimFiyatKDVsiz,@ldHrkdBirimFiyatKDVli,@ldHrkdToplamFiyatKDVsiz,@ldHrkdToplamKDV,@ldHrkdIskontoSonrasiTutar,@pDoviz,@pDovizYeri,@cDovizTuru,@sSatirAciklama);

set @AlinanSiparisSatir_Rowid=SCOPE_IDENTITY();

update GUSTO00001.AlinanSiparisSatir set pOdemeKosulu=@pOdemeKosulu,nVadeSuresi=@nVade where AlinanSiparisSatir_rowid=@AlinanSiparisSatir_Rowid;

if(@pOdemeKosulu>0 and (select COUNT(*) from GUSTO00001.OdemeKosullariVadesi where pOdemeKosulu=@pOdemeKosulu)=1) begin

	INSERT Gusto00001.StokHarOdemePlani (cHareketTuru,pHareket,nVade,ldOdemeTutari,fYuzde,pOdemeKosulu,nVadeSureHesapTipi,nVadeSureYuvTipi,dtOrginalTarih)
	values ('2',@AlinanSiparisSatir_Rowid,@nVade,((@ldToplamFiyatKDVsiz+@ldToplamKDV)*(@fYuzde/100)),@fYuzde,@pOdemeKosulu,@nVadeSureTipi,3,@dtOriginalTarih);

end

FETCH NEXT FROM VerilenTeklifSatirlari INTO @nSira,@pStokKodu,@ldMalMiktari1Birim,@ldKDVOrani,@ldBirimFiyatKDVsiz,@ldBirimFiyatKDVli,
@ldToplamFiyatKDVsiz,@ldToplamKDV,@ldIskontoSonrasiTutar,@ldHrkdBirimFiyatKDVsiz,@ldHrkdBirimFiyatKDVli,@ldHrkdToplamFiyatKDVsiz,
@ldHrkdToplamKDV,@ldHrkdIskontoSonrasiTutar,@sSatirAciklama
		
END

CLOSE VerilenTeklifSatirlari

DEALLOCATE VerilenTeklifSatirlari


--------------- Montaj Talimat Bilgilerinin Alınan Sipariş Satır Ek Alanlarına Aktarımı
declare @AlinanSipOwnerID int;
declare @sMontajTalimatTuru varchar(30);
declare @sMontajTalimatDili varchar(30);
declare @sMontajTalimatiMevcutMu varchar(20);
declare @sMontajTalimatiDosyaYolu varchar(255);


DECLARE MontajTalimatSatirlari CURSOR FOR

select ass.AlinanSiparisSatir_rowid,
c1.SDEGER [MontajTalimatTuru],
c2.SDEGER [MontajTalimatDili],
c3.SDEGER [MontajTalimatKlasördeMevcutMu],
isnull(ek.DosyaYolu ,'Bu Stok Kartına Dosya Yolu Tanımlanmamış') [MontajTalimatiDosyaYolu] 
from Gusto.bpmcg_MontajTalimatlari mt
inner join GUSTO00001.AlinanSiparisSatir ass on ass.pStokKodu=mt.pStokKodu
left join (select sMetin DosyaYolu,pOwnerID from GUSTO00001.stokEkAlanMetin where pEkAlanTanimi=44)ek on ek.pOwnerID=ass.pStokKodu
left join Gusto.EPMFormItem_ComboItem c1 on c1.EPMFORMITEM_COMBOITEM_ROWID=mt.pMontajTalimati
left join Gusto.EPMFormItem_ComboItem c2 on c2.EPMFORMITEM_COMBOITEM_ROWID=mt.pMTalimatDili
left join Gusto.EPMFormItem_ComboItem c3 on c3.EPMFORMITEM_COMBOITEM_ROWID=mt.bMTalimatMevcut
where mt.PPARENT=(select ROWID from Gusto.BPMFT_VTMUSTERIONAYI where PFAALIYET=@pFaaliyet)

OPEN MontajTalimatSatirlari


FETCH NEXT FROM MontajTalimatSatirlari INTO @AlinanSipOwnerID,@sMontajTalimatTuru,@sMontajTalimatDili,@sMontajTalimatiMevcutMu,@sMontajTalimatiDosyaYolu

WHILE @@FETCH_STATUS =0

BEGIN

if @@CURSOR_ROWS>0 begin

	--Montaj Talimat Türü

	insert into GUSTO00001.alsatEkAlanMetin (pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
	(45,'LS',@AlinanSipOwnerID,@sMontajTalimatTuru,@pOlusturanKullanici,CAST(GETDATE() as date),@tmOlusturma);

	--Montaj Talimatı Mevcut Mu?

	insert into GUSTO00001.alsatEkAlanMetin (pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
	(46,'LS',@AlinanSipOwnerID,@sMontajTalimatiMevcutMu,@pOlusturanKullanici,CAST(GETDATE() as date),@tmOlusturma);

	--Montaj Talimat Dili

	insert into GUSTO00001.alsatEkAlanMetin (pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
	(47,'LS',@AlinanSipOwnerID,@sMontajTalimatDili,@pOlusturanKullanici,CAST(GETDATE() as date),@tmOlusturma);

	--Montaj Talimatı Dosya Yolu

	insert into GUSTO00001.alsatEkAlanMetin (pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
	(48,'LS',@AlinanSipOwnerID,@sMontajTalimatiDosyaYolu,@pOlusturanKullanici,CAST(GETDATE() as date),@tmOlusturma);


end

FETCH NEXT FROM MontajTalimatSatirlari INTO @AlinanSipOwnerID,@sMontajTalimatTuru,@sMontajTalimatDili,@sMontajTalimatiMevcutMu,@sMontajTalimatiDosyaYolu
		
END

CLOSE MontajTalimatSatirlari

DEALLOCATE MontajTalimatSatirlari

---------------

if (exists (select * from GUSTO00001.AlinanSiparisBaslik where AlinanSiparisBaslik_rowid=@AlinanSiparisBaslik_Rowid)) begin

delete from GUSTO00001.FaturaKDV where ((pBaslik=@AlinanSiparisBaslik_Rowid AND ldKDVOrani=0) AND cBelgeTuru='AS');

insert into GUSTO00001.FaturaKDV (cBelgeTuru,pBaslik,ldKDVOncesiTutar,ldKDVOrani,ldKDVTutari)
--select 'AS',@AlinanSiparisBaslik_Rowid,sum(ldKDVMatrahi),ldKDVOrani,sum(ldKDVTutari) from Gusto.BPMCG_VTeklifSatirlari where 
--PPARENT=(select ROWID from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart) group by ldKDVOrani

select Siparis,SiparisID,sum(Matrah),KDVOran,sum(KdvTutarı)  from 
(
	select 'AS' Siparis ,@AlinanSiparisBaslik_Rowid SiparisID,sum(ldKDVMatrahi) 'Matrah',ldKDVOrani 'KDVOran',sum(ldKDVTutari) 'KdvTutarı'

	from Gusto.BPMCG_VTeklifSatirlari where ROWID in (select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2897 and PFAALIYET=@pFaaliyet)
	group by ldKDVOrani
				
	union all
			
	select 'AS' Siparis,@AlinanSiparisBaslik_Rowid SiparisID,sum(ldAltKDVMatrah) 'Matrah' ,ldAltKDVOrani 'KDVOran',sum(ldAltKDVTutari) 'KdvTutarı'

	from Gusto.BPMCG_VTAlternatifStoklar where ROWID in (select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2898 and PFAALIYET=@pFaaliyet) 
	group by ldAltKDVOrani
				
)ending

group by KDVOran,SiparisID,Siparis

if not exists (select * from Gusto.VerilenTeklifLog where pKartID=@pKart) begin

	insert into Gusto.VerilenTeklifLog ([pKartID],pKartTuru,pAlinanSiparisBaslik,bMusteriyeGonderildi) 
	select EPMKART_ROWID,PKARTTURU,@AlinanSiparisBaslik_Rowid,1 from Gusto.EPMKart where EPMKART_ROWID=@pKart;

end

else if exists (select * from Gusto.VerilenTeklifLog where pKartID=@pKart) begin


	update Gusto.VerilenTeklifLog set pAlinanSiparisBaslik=@AlinanSiparisBaslik_Rowid where pKartID=@pKart;


end
-----Navlun Tutari 

declare @pTeklifTuru int;

if(isnull((select pTeklifTuru from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart),0)=1111) begin  --select * from Gusto.EPMFormItem_ComboItem where PCOMBO=34 Yurtdışı

declare @ldNavlunTutari decimal(22,6);
declare @ldNavlunTutari_Doviz decimal(22,6);

(select @ldNavlunTutari=ldNavlunTutari,@ldNavlunTutari_Doviz=ldNavlunTutari_Doviz from Gusto.BPMKT_VERILENTEKLIF where PKART=@pKart);

if(@ldNavlunTutari>0) 

	begin

	INSERT Gusto00001.AlinanSiparisSatir(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,ldKDVOrani,
	ldBirimFiyatKDVsiz,ldBirimFiyatKDVli,ldToplamFiyatKDVsiz,
	ldToplamKDV,ldIskontoSonrasiTutar,dtTarih,nSira,cCariTuru,pCari,pOlusturanKullanici,dtOlusturma,tmOlusturma,cBaglanti,cAcikKapali,cSatirOnayDurumu,
	ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,ldhrkdIskontoSonrasiTutar,pDoviz,pDovizYeri,cKurTuru,sAciklama)

	values (@AlinanSiparisBaslik_Rowid,@sSeri,@nSeriNo,'H',1506,@dtTeslimTarihi,'1',1,0,@ldNavlunTutari,@ldNavlunTutari,@ldNavlunTutari,0,@ldNavlunTutari,@dtTeklifTarihi,
	(select COUNT(*)+1 from GUSTO00001.AlinanSiparisSatir where pBaslik=@AlinanSiparisSatir_Rowid),'C',@pCari,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma,'Z','A','G',
	@ldNavlunTutari_Doviz,@ldNavlunTutari_Doviz,@ldNavlunTutari_Doviz,@ldNavlunTutari_Doviz,@pDoviz,@pDovizYeri,@cDovizTuru,'Navlun Tutarı');

	set @AlinanSiparisSatir_Rowid=SCOPE_IDENTITY();

	    if(@pOdemeKosulu>0 and  (select COUNT(*) from GUSTO00001.OdemeKosullariVadesi where pOdemeKosulu=@pOdemeKosulu)=1) begin

		INSERT Gusto00001.StokHarOdemePlani (cHareketTuru,pHareket,nVade,ldOdemeTutari,fYuzde,pOdemeKosulu,nVadeSureHesapTipi,nVadeSureYuvTipi,dtOrginalTarih)
		values ('2',@AlinanSiparisSatir_Rowid,@nVade,((@ldNavlunTutari)*(@fYuzde/100)),@fYuzde,@pOdemeKosulu,@nVadeSureTipi,3,@dtOriginalTarih);

		update GUSTO00001.AlinanSiparisSatir set pOdemeKosulu=@pOdemeKosulu,nVadeSuresi=@nVade where AlinanSiparisSatir_rowid=@AlinanSiparisSatir_Rowid;

		end


	end


end

-----

update GUSTO00001.Seri set nNo=@nSeriNo where sSeri=@sSeri and nHareketTuru=3000

update GUSTO00001.AlinanSiparisBaslik set 
ldToplamTutar=(select SUM(ldIskontoSonrasiTutar+ldToplamKDV) from GUSTO00001.AlinanSiparisSatir where pBaslik=@AlinanSiparisBaslik_Rowid),
ldToplamKDV=(select SUM(ldToplamKDV) from GUSTO00001.AlinanSiparisSatir where pBaslik=@AlinanSiparisBaslik_Rowid),sAciklama=@sAciklama

where AlinanSiparisBaslik_rowid=@AlinanSiparisBaslik_Rowid;



----BPMKT_VERILENTEKLISATIR DURUMLARI GÜNCELLEME

update Gusto.BPMCG_VTeklifSatirlari set pSatirDurum=1134,
sSiprSeriNo='' where ROWID in 

(select ROWID from Gusto.BPMCG_VTeklifSatirlari where ROWID not in 
(select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2897 and PFAALIYET=@pFaaliyet)); --Müşteri Tarafından Reddedildi pCombo:36

update Gusto.BPMCG_VTeklifSatirlari set pSatirDurum=1140,sSiprSeriNo=
(select CONCAT(sSeri,' - ',lNo) from GUSTO00001.AlinanSiparisBaslik where AlinanSiparisBaslik_rowid=@AlinanSiparisBaslik_Rowid) where ROWID in 

(select ROWID from Gusto.BPMCG_VTeklifSatirlari where ROWID in (select PITEM from Gusto.EPMItemValue_Multi where PEKBILGITURU=2897 and PFAALIYET=@pFaaliyet)); 

update Gusto.BPMKT_VERILENTEKLIF set sSiparisSeriNo=(select CONCAT(sSeri,' - ',lNo) from GUSTO00001.AlinanSiparisBaslik where AlinanSiparisBaslik_rowid=@AlinanSiparisBaslik_Rowid)
where PKART=@pKart;

--- Kullanıcı Tanımları

declare @nTeslimSekli int;
declare @nMalÇıkısLokasyon int;
declare @nStciker int;
declare @nPaketSekli int;
declare @nCiktiAlindiMi int;

select @nTeslimSekli=isnull(pTeslimSekli,0),@nMalÇıkısLokasyon=isnull(pMalCikisLokasyon,0),@nStciker=ISNULL(pSticker,0),@nPaketSekli=ISNULL(pPaketleme,0),@nCiktiAlindiMi=ISNULL(pCikti,0) from Gusto.BPMFT_VTMUSTERIONAYI where PFAALIYET=@pFaaliyet;

if(@nTeslimSekli>0) begin

INSERT into GUSTO00001.alsatKulTanHar (cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values ('AS',@AlinanSiparisBaslik_Rowid,@nTeslimSekli,@dtTeklifTarihi,@sSeri,@nSeriNo,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma)

end


if(@nMalÇıkısLokasyon>0) begin

INSERT into GUSTO00001.alsatKulTanHar (cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values ('AS',@AlinanSiparisBaslik_Rowid,@nMalÇıkısLokasyon,@dtTeklifTarihi,@sSeri,@nSeriNo,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma)

end

if(@nStciker>0) begin

INSERT into GUSTO00001.alsatKulTanHar (cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values ('AS',@AlinanSiparisBaslik_Rowid,@nStciker,@dtTeklifTarihi,@sSeri,@nSeriNo,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma)

end

if(@nPaketSekli>0) begin

INSERT into GUSTO00001.alsatKulTanHar (cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values ('AS',@AlinanSiparisBaslik_Rowid,@nPaketSekli,@dtTeklifTarihi,@sSeri,@nSeriNo,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma)

end

if(@nCiktiAlindiMi>0) begin

INSERT into GUSTO00001.alsatKulTanHar (cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values ('AS',@AlinanSiparisBaslik_Rowid,@nCiktiAlindiMi,@dtTeklifTarihi,@sSeri,@nSeriNo,@pOlusturanKullanici,@dtOlusturma,@tmOlusturma)

end

---	INSERT alsatKulTanHar #12860 cHareketTuru,pHareket,pKulTan,dtTarih,sSeri,lSeriNo,pOlusturanKullanici,dtOlusturma,tmOlusturma
--'AS',6431,24,'10.05.2018','ASB',1644,1,'16.05.2018',155633

end

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