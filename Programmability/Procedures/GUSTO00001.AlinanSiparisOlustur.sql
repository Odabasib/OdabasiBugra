SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[AlinanSiparisOlustur] 

@pFaaliyet int,
@pKullanici int

AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @nSatir int;
	
DECLARE @AlinanSiparisBaslik_rowid int;
DECLARE @No int;
DECLARE @pOlusturan int;
DECLARE @tmOlusturma int;
declare @getDate smalldatetime;

set @getDate = (SELECT CONVERT(smalldatetime, CONVERT(DATE, GETDATE())));

SET @pOlusturan = (select PGUSTOKULLANICISI from Gusto.EPMKULLANICI
where EPMKULLANICI_ROWID = @pKullanici);

set @No = (select nNo + 1 from GUSTO00001.Seri where Seri_rowid = 5);

UPDATE GUSTO00001.Seri SET nNo=nNo+1
where Seri_rowid = 5

set @tmOlusturma = (select CONVERT(int, REPLACE(convert(varchar, getdate(),108), ':', '')));

--Verilen Sipariş Başlık
insert into GUSTO00001.AlinanSiparisBaslik(sSeri,lNo,dtTarih,dtTeslimTarihi,cCariTuru,
pCari,cSiparisBilgiFarkli,pPersonel,cOnayDurumu,cTeslimatDurumu,
pOlusturanKullanici,dtOlusturma,tmOlusturma,cAcikKapali,cSiparisDondurulmus,
cSevkEmrineAktarildi)
select 'ASB', @No, @getDate, SAS.dtTarih, 'C',
sas.pMusteriKodu, 'H', 14, 'G', '0',
@pOlusturan, @getDate, @tmOlusturma, 'A', 'H',
'H'
from Gusto.BPMFT_VERILENTEKLIF sas
--left join Gusto.EPMFaaliyet ef on sas.PFAALIYET = ef.EPMFAALIYET_ROWID
where sas.PFAALIYET = @pFaaliyet

set @AlinanSiparisBaslik_rowid = SCOPE_IDENTITY();


DECLARE @UsdKur decimal(22,12);

set @UsdKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=2
and convert(date,dtTarih)=convert(date, GETDATE())), 0);

DECLARE @EurKur decimal(22,12);

set @EurKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=3
and convert(date,dtTarih)=convert(date, GETDATE())), 0);

DECLARE @HdKur decimal(22,12);

set @HdKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=
(select mus.pDoviz
from Gusto.BPMFT_VERILENTEKLIF sas
left join GUSTO00001.MusteriSaticiKodu mus on mus.MusteriSaticiKodu_rowid = sas.pMusteriKodu
where sas.PFAALIYET = @pFaaliyet)
and convert(date,dtTarih)=convert(date, GETDATE())), 0);
--SET @usp_GetErrorInfo = '2';

--Verilen Sipariş Satır

--Normal Stoklar
insert into GUSTO00001.AlinanSiparisSatir(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pIzlemeKodu,
dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,cKapatmaBirimi,
ldKDVOrani,
--
ldBirimFiyatKDVsiz,
ldBirimFiyatKDVli,
ldToplamFiyatKDVsiz,
ldToplamKDV,
ldIskontoSonrasiTutar,

dtTarih,nSira,cCariTuru,
pCari,--pFiyatListesi,

ldsdBirimFiyatKDVsiz,ldsdBirimFiyatKDVli,ldsdToplamFiyatKDVsiz,
ldsdToplamKDV,ldsdIskontoSonrasiTutar,

ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,
ldhrkdToplamKDV,ldhrkdIskontoSonrasiTutar,

ldhdBirimFiyatKDVsiz,ldhdBirimFiyatKDVli,ldhdToplamFiyatKDVsiz,
ldhdToplamKDV,ldhdIskontoSonrasiTutar,

pDoviz,pDovizYeri,cKurTuru,ldSetMiktari,

pOlusturanKullanici,dtOlusturma,tmOlusturma,
cBaglanti,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,cSatirOnayDurumu)

select @AlinanSiparisBaslik_rowid, 'ASB', @No, 'S', sass.pStokKodu,
--sass.pIzlemeKodu,
0,
sas.dtTarih, '1', sass.ldMktar,'1',
sass.nKDV,
--Tl tutarlar
case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyat end,

case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * (100 + sass.nKDV) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyat * (100 + sass.nKDV) / 100 end,

case when sass.pDovizCG >1 then (sass.ldToplamTutarKDVli_Doviz-sass.ldKDV_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli-sass.ldKDV end,

case when sass.pDovizCG >1 then sass.ldKDV_Doviz * isnull(d.dSatis,0)
else sass.ldKDV end,

case when sass.pDovizCG >1 then sass.ldToplamTutarKDVli_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli end,

@getDate, ROW_NUMBER() OVER(ORDER BY sass.ROWID ASC) AS RowNumber, 'C',
sas.pMusteriKodu,-- ISNULL(fls.FiyatListesiSatir_rowid, 0),

--Sistem Dövizi Tutarlar
case when @EurKur > 0 
then (case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyat end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * (100 + sass.nKDV) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyat * (100 + sass.nKDV) / 100 end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sass.pDovizCG >1 then (sass.ldToplamTutarKDVli_Doviz-sass.ldKDV_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli-sass.ldKDV end) / @EurKur 
else 0 end,


case when @EurKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldKDV_Doviz * isnull(d.dSatis,0)
else sass.ldKDV end) / @EurKur 
else 0 end,


case when @EurKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldToplamTutarKDVli_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli end) / @EurKur 
else 0 end,

--hareket Dovizi
sass.ldBirimFiyat_Doviz,sass.ldBirimFiyat_Doviz * (100 + sass.nKDV) / 100, sass.ldToplamTutarKDVli_Doviz-sass.ldKDV_Doviz,
sass.ldKDV_Doviz, sass.ldToplamTutarKDVli_Doviz,

--HesapDöviziTutarlar
case when @HdKur > 0 
then (case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyat end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldBirimFiyat_Doviz * (100 + sass.nKDV) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyat * (100 + sass.nKDV) / 100 end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizCG >1 then (sass.ldToplamTutarKDVli_Doviz-sass.ldKDV_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli-sass.ldKDV end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldKDV_Doviz * isnull(d.dSatis,0)
else sass.ldKDV end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizCG >1 then sass.ldToplamTutarKDVli_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVli end) / @HdKur 
else 0 end,

case when sass.pDovizCG in (0 ,1) then 0 else sass.pDovizCG end,
case when sass.pDovizCG in (0 ,1) then 0 else sass.pDovizCG_DovizYeri end,
case when sass.pDovizCG in (0 ,1) then 0 else sass.pDovizCG_DovizTuru + 1 end, 
@EurKur,

@pOlusturan, @getDate, @tmOlusturma,
'Z', 'A', 'H', 'H', 'G'
from gusto.EPMItemValue_Multi em
inner join Gusto.BPMCG_VTEKLIFSATIRLARI sass on em.PITEM = sass.ROWID
inner join Gusto.BPMFT_VERILENTEKLIF sas on sas.ROWID = sass.PPARENT
left join gusto.DovizKuru d on d.pDoviz = sass.pDovizCG and d.pDovizYeri = 1 and convert(date,d.dtTarih)=convert(date, GETDATE())
--left join GUSTO00001.StokKodu sk on sass.pStok = sk.StokKodu_rowid
--left join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
where em.PEKBILGITURU = 1298 and EM.PFAALIYET = @pFaaliyet and sas.PFAALIYET = @pFaaliyet 
order by sass.ROWID



declare @SatirSayisi int;
set @SatirSayisi = (select count(*) from GUSTO00001.AlinanSiparisSatir where pBaslik = @AlinanSiparisBaslik_rowid);
--SET @usp_GetErrorInfo = '3';
--Alternatif Satırlar İnsert //eklenecek
insert into GUSTO00001.AlinanSiparisSatir(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pIzlemeKodu,
dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,cKapatmaBirimi,
ldKDVOrani,
--
ldBirimFiyatKDVsiz,
ldBirimFiyatKDVli,
ldToplamFiyatKDVsiz,
ldToplamKDV,
ldIskontoSonrasiTutar,

dtTarih,nSira,cCariTuru,
pCari,--pFiyatListesi,

ldsdBirimFiyatKDVsiz,ldsdBirimFiyatKDVli,ldsdToplamFiyatKDVsiz,
ldsdToplamKDV,ldsdIskontoSonrasiTutar,

ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,
ldhrkdToplamKDV,ldhrkdIskontoSonrasiTutar,

ldhdBirimFiyatKDVsiz,ldhdBirimFiyatKDVli,ldhdToplamFiyatKDVsiz,
ldhdToplamKDV,ldhdIskontoSonrasiTutar,

pDoviz,pDovizYeri,cKurTuru,ldSetMiktari,

pOlusturanKullanici,dtOlusturma,tmOlusturma,
cBaglanti,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,cSatirOnayDurumu)

select @AlinanSiparisBaslik_rowid, 'ASB', @No, 'S', sass.pStokKoduAtf,
--sass.pIzlemeKoduAtf,
0,
sas.dtTarih, '1', sass.nMiktarAtf,'1',
sass.nKDVAtf,
--Tl tutarlar
case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf end,

case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * (100 + sass.nKDVAtf) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf * (100 + sass.nKDVAtf) / 100 end,

case when sass.pDovizAtf >1 then (sass.ldToplamTutarKDVliAtf_Doviz-sass.ldKDVTutariAtf_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf-sass.ldKDVTutariAtf end,

case when sass.pDovizAtf >1 then sass.ldKDVTutariAtf_Doviz * isnull(d.dSatis,0)
else sass.ldKDVTutariAtf end,

case when sass.pDovizAtf >1 then sass.ldToplamTutarKDVliAtf_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf end,

@getDate, ROW_NUMBER() OVER(ORDER BY sass.ROWID ASC)+@SatirSayisi AS RowNumber, 'C',
sas.pMusteriKodu,-- ISNULL(fls.FiyatListesiSatir_rowid, 0),

--Sistem Dövizi Tutarlar
case when @EurKur > 0 
then (case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * (100 + sass.nKDVAtf) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf * (100 + sass.nKDVAtf) / 100 end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sass.pDovizAtf >1 then (sass.ldToplamTutarKDVliAtf_Doviz-sass.ldKDVTutariAtf_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf-sass.ldKDVTutariAtf end) / @EurKur 
else 0 end,


case when @EurKur > 0 
then (
case when sass.pDovizAtf >1 then sass.ldKDVTutariAtf_Doviz * isnull(d.dSatis,0)
else sass.ldKDVTutariAtf end) / @EurKur 
else 0 end,


case when @EurKur > 0 
then (
case when sass.pDovizAtf>1 then sass.ldToplamTutarKDVliAtf_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf end) / @EurKur 
else 0 end,

--hareket Dovizi
sass.ldBirimFiyatAtf_Doviz,sass.ldBirimFiyatAtf_Doviz * (100 + sass.nKDVAtf) / 100, sass.ldToplamTutarKDVliAtf_Doviz-sass.ldKDVTutariAtf_Doviz,
sass.ldKDVTutariAtf_Doviz, sass.ldToplamTutarKDVliAtf_Doviz,

--HesapDöviziTutarlar
case when @HdKur > 0 
then (case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizAtf >1 then sass.ldBirimFiyatAtf_Doviz * (100 + sass.nKDVAtf) / 100 * isnull(d.dSatis,0)
else sass.ldBirimFiyatAtf * (100 + sass.nKDVAtf) / 100 end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizAtf >1 then (sass.ldToplamTutarKDVliAtf_Doviz-sass.ldBirimFiyatAtf_Doviz) * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf-sass.ldKDVTutariAtf end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizAtf >1 then sass.ldKDVTutariAtf_Doviz * isnull(d.dSatis,0)
else sass.ldKDVTutariAtf end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sass.pDovizAtf >1 then sass.ldToplamTutarKDVliAtf_Doviz * isnull(d.dSatis,0)
else sass.ldToplamTutarKDVliAtf end) / @HdKur 
else 0 end,

case when sass.pDovizAtf in (0 ,1) then 0 else sass.pDovizAtf end,
case when sass.pDovizAtf in (0 ,1) then 0 else sass.pDovizAtf_DovizYeri end,
case when sass.pDovizAtf in (0 ,1) then 0 else sass.pDovizAtf_DovizTuru + 1 end, 
@EurKur,

@pOlusturan, @getDate, @tmOlusturma,
'Z', 'A', 'H', 'H', 'G'
from gusto.EPMItemValue_Multi em
inner join Gusto.BPMCG_VTEKLIFALTERNATIF sass on em.PITEM = sass.ROWID +100000
inner join Gusto.BPMCG_VTEKLIFSATIRLARI vsass on vsass.ROWID = sass.PPARENT
inner join Gusto.BPMFT_VERILENTEKLIF sas on sas.ROWID = vsass.PPARENT
left join gusto.DovizKuru d on d.pDoviz = sass.pDovizAtf and d.pDovizYeri = 1 and convert(date,d.dtTarih)=convert(date, GETDATE())
--left join GUSTO00001.StokKodu sk on sass.pStok = sk.StokKodu_rowid
--left join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
where em.PEKBILGITURU = 1298 and EM.PFAALIYET = @pFaaliyet and sas.PFAALIYET = @pFaaliyet 

--Navlun Bedeli insert
set @SatirSayisi = (select count(*) from GUSTO00001.AlinanSiparisSatir where pBaslik = @AlinanSiparisBaslik_rowid);
--SET @usp_GetErrorInfo = '4';

declare @ldNavlun decimal(22,12);
set @ldNavlun = (select ldNavlunBedeli from Gusto.BPMFT_VERILENTEKLIF where PFAALIYET = @pFaaliyet);

if(@ldNavlun>0)
begin
insert into GUSTO00001.AlinanSiparisSatir(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pIzlemeKodu,
dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,cKapatmaBirimi,
ldKDVOrani,
--
ldBirimFiyatKDVsiz,
ldBirimFiyatKDVli,
ldToplamFiyatKDVsiz,
ldToplamKDV,
ldIskontoSonrasiTutar,

dtTarih,nSira,cCariTuru,
pCari,--pFiyatListesi,

ldsdBirimFiyatKDVsiz,ldsdBirimFiyatKDVli,ldsdToplamFiyatKDVsiz,
ldsdToplamKDV,ldsdIskontoSonrasiTutar,

ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,
ldhrkdToplamKDV,ldhrkdIskontoSonrasiTutar,

ldhdBirimFiyatKDVsiz,ldhdBirimFiyatKDVli,ldhdToplamFiyatKDVsiz,
ldhdToplamKDV,ldhdIskontoSonrasiTutar,

pDoviz,pDovizYeri,cKurTuru,ldSetMiktari,

pOlusturanKullanici,dtOlusturma,tmOlusturma,
cBaglanti,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,cSatirOnayDurumu)

select @AlinanSiparisBaslik_rowid, 'ASB', @No, 'H', 1339,0, --burası navlun olacak unutma!!
sas.dtTarih,'1', 1,'1',0,
--Tl tutarlar
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end,

case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end,

case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end,

0,

case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end,

@getDate, @SatirSayisi+1, 'C',
sas.pMusteriKodu,-- ISNULL(fls.FiyatListesiSatir_rowid, 0),

--Sistem Dövizi Tutarlar
case when @EurKur > 0 
then (case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @EurKur 
else 0 end,

0,

case when @EurKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @EurKur 
else 0 end,

--hareket Dovizi
ldNavlunBedeli_Doviz,ldNavlunBedeli_Doviz, ldNavlunBedeli_Doviz,
0, ldNavlunBedeli_Doviz,

--HesapDöviziTutarlar
case when @HdKur > 0 
then (case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @HdKur
else 0 end,

case when @HdKur > 0 
then (
case when sas.pDoviz >1 then ldNavlunBedeli_Doviz * isnull(d.dSatis,0)
else ldNavlunBedeli end) / @HdKur 
else 0 end,

case when sas.pDoviz in (0 ,1) then 0 else sas.pDoviz end,
case when sas.pDoviz in (0 ,1) then 0 else sas.pDoviz_DovizYeri end,
case when sas.pDoviz in (0 ,1) then 0 else sas.pDoviz_DovizTuru + 1 end, 
@EurKur,

@pOlusturan, @getDate, @tmOlusturma,
'Z', 'A', 'H', 'H', 'G'
from Gusto.BPMFT_VERILENTEKLIF sas
left join gusto.DovizKuru d on d.pDoviz = sas.pDoviz and d.pDovizYeri = 1 and convert(date,d.dtTarih)=convert(date, GETDATE())
--left join GUSTO00001.StokKodu sk on sass.pStok = sk.StokKodu_rowid
--left join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
where  sas.PFAALIYET = @pFaaliyet 
end

--SET @usp_GetErrorInfo = '5';
insert into GUSTO00001.FaturaKDV(cBelgeTuru,pBaslik,ldKDVOncesiTutar,
ldKDVOrani,ldKDVTutari,ldYuvarlamaFarki)
select 'AS', @AlinanSiparisBaslik_rowid, sum(ldBirimFiyatKDVsiz * ldMalMiktari1Birim),
ldKDVOrani, sum(ldToplamKDV), 0
from GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid
group by ldKDVOrani

declare @pVade int;
set @pVade = isnull ((select pOdemeVadesi from gusto.BPMFT_VERILENTEKLIF where PFAALIYET = @pFaaliyet),0)

--SET @usp_GetErrorInfo = '6';
select * from GUSTO00001.StokHarOdemePlani
insert into GUSTO00001.StokHarOdemePlani(cHareketTuru,pHareket,ldOdemeTutari,fYuzde,pOdemeKosulu,
nVadeSureHesapTipi,nVadeSureYuvTipi,dtOrginalTarih)
select '2', AlinanSiparisSatir_rowid, ldBirimFiyatKDVli * ldMalMiktari1Birim, 100, @pVade,
1,3, @getDate
from GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid


--SET @usp_GetErrorInfo = '7';
update GUSTO00001.AlinanSiparisBaslik
SET ldToplamTutar = (SELECT sum(ldBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid),

ldToplamKDV = (SELECT sum(ldToplamKDV)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid),

ldsdToplamTutar = (SELECT sum(ldsdBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid),

ldsdToplamKDV = (SELECT sum(ldsdToplamKDV)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid),

ldhdToplamTutar = (SELECT sum(ldhdBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid),

ldhdToplamKDV = (SELECT sum(ldhdToplamKDV)
FROM GUSTO00001.AlinanSiparisSatir
where pBaslik = @AlinanSiparisBaslik_rowid)

where AlinanSiparisBaslik_rowid = @AlinanSiparisBaslik_rowid


--SET @usp_GetErrorInfo = '8';
update Gusto.BPMFT_VERILENTEKLIF
set pGustoAlinanSiparis = @AlinanSiparisBaslik_rowid, sGustoSiparis = 'ASB-'+convert(varchar(20),@No)
where PFAALIYET = @pFaaliyet

--Notlar vs insert
declare @sSiparisNotu varchar(100);
set @sSiparisNotu = (select sSiparisNotu from gusto.BPMFT_VERILENTEKLIF where PFAALIYET =@pFaaliyet);
declare @sMusteriNotu varchar(100);
set @sMusteriNotu = (select sMusteriNotu from gusto.BPMFT_VERILENTEKLIF where PFAALIYET =@pFaaliyet);
declare @pKulTan int;
set @pKulTan = (isnull((select pKulTan from gusto.BPMKT_NAKLIYETURU 
inner join gusto.BPMFT_VERILENTEKLIF on pNakliyeTuru = PKART where PFAALIYET =@pFaaliyet),0));

if len(@sSiparisNotu)>0
begin
insert into GUSTO00001.alsatNotlar(sMetin,pNotAdiTanimi,cSahibinTuru,pOwnerID,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values(@sSiparisNotu,5,'AS',@AlinanSiparisBaslik_rowid,@pOlusturan,getdate(),@tmOlusturma)
end

if len(@sMusteriNotu)>0
begin
insert into GUSTO00001.alsatNotlar(sMetin,pNotAdiTanimi,cSahibinTuru,pOwnerID,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values(@sMusteriNotu,2,'AS',@AlinanSiparisBaslik_rowid,@pOlusturan,getdate(),@tmOlusturma)
end

if @pKulTan>0 
begin
insert into GUSTO00001.alsatKulTanHar select
'AS',@AlinanSiparisBaslik_rowid,@pKulTan,getdate(),'ASB',@No ,@pKullanici,getDate(),@tmOlusturma,0,NULL,0
from gusto.BPMFT_VERILENTEKLIF
end

--Paketleme Detayı Insert (normal satırlar)

insert into GUSTO00001.alsatNotlar
select COL_1267,7,'LS',AlinanSiparisSatir_rowid,@pOlusturan,getdate(),@tmOlusturma,0,null,0
 from gusto.BPMCG_VTEKLIFSATIRLARI cg
inner join GUSTO.BPMFT_VERILENTEKLIF vt ON cg.PPARENT = vt.ROWID
inner join gusto00001.AlinanSiparisBaslik on vt.pGustoAlinanSiparis = AlinanSiparisBaslik_rowid
inner join GUSTO00001.AlinanSiparisSatir on pBaslik = AlinanSiparisBaslik_rowid
WHERE PFAALIYET = @pFaaliyet and AlinanSiparisBaslik_rowid = @AlinanSiparisBaslik_rowid
order by cg.ROWID

--Paketleme Detayı Insert (alternatifler satırlar)
insert into GUSTO00001.alsatNotlar
select al.sPakDetayAtf,7,'LS',AlinanSiparisSatir_rowid,@pOlusturan,getdate(),@tmOlusturma,0,null,0
 from gusto.BPMCG_VTEKLIFALTERNATIF al
inner join gusto.BPMCG_VTEKLIFSATIRLARI cg on cg.ROWID = al.PPARENT
inner join GUSTO.BPMFT_VERILENTEKLIF vt ON cg.PPARENT = vt.ROWID
inner join gusto00001.AlinanSiparisBaslik on vt.pGustoAlinanSiparis = AlinanSiparisBaslik_rowid
inner join GUSTO00001.AlinanSiparisSatir on pBaslik = AlinanSiparisBaslik_rowid
WHERE PFAALIYET = @pFaaliyet and AlinanSiparisBaslik_rowid = @AlinanSiparisBaslik_rowid
order by cg.ROWID


delete from GUSTO00001.alsatNotlar where sMetin like '' and pNotAdiTanimi = 7

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