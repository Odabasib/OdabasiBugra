SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[SiparisOlustur] 
@pFaaliyet int,
@pKullanici int,
@sAciklama varchar(255)
--@PR_ID1 int output

AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;
declare @nSatir int;

set @nSatir = (select COUNT(*) from Gusto.BPMFT_SATINALMASIPARIS sas
left join Gusto.BPMCG_SIPARISSATIRLARI sass on sas.ROWID = sass.PPARENT
where sas.PFAALIYET = @pFaaliyet)

if @nSatir > 0

begin

DECLARE @VerilenSiparisBaslik_rowid int;
DECLARE @No int;
DECLARE @pOlusturan int;
DECLARE @tmOlusturma int;
declare @getDate smalldatetime;
declare @nCariVade int;

set @getDate = (SELECT CONVERT(smalldatetime, CONVERT(DATE, GETDATE())));

SET @pOlusturan = (select PGUSTOKULLANICISI from Gusto.EPMKULLANICI
where EPMKULLANICI_ROWID = @pKullanici);

set @No = (select nNo + 1 from GUSTO00001.Seri where Seri_rowid = 6);

UPDATE GUSTO00001.Seri SET nNo=nNo+1 where Seri_rowid = 6

set @tmOlusturma = (select CONVERT(int, REPLACE(convert(varchar, getdate(),108), ':', '')));

declare @pPersonel int;


--Verilen Sipariş Oluşturulacağı için nVadeAlack alanına bakılması lazım.Satış olsaydı nVadeBorca bakmak gerekirdi. Buğra 19.06.2019
set @nCariVade=(select md.nFaturaVadeAlacak from GUSTO00001.MusteriSaticiDetayi md
inner join Gusto.BPMFT_SATINALMASIPARIS s on s.pTedarikci=md.pMusteriSaticiKodu
where PFAALIYET=@pFaaliyet);

--set @pPersonel = (select pPersonel from (
--select ekul.EPMKULLANICI_ROWID, isnull(MAX(pd.pPersonelKodu), 104) pPersonel
--from Gusto.EPMKULLANICI ekul
--left join Gusto.Kullanici kul on ekul.PGUSTOKULLANICISI = kul.Kullanici_rowid
--left join GUSTO00001.PersonelDetayi pd on kul.Adi = pd.sGustoKullanici
--group by ekul.EPMKULLANICI_ROWID
--) a
--where a.EPMKULLANICI_ROWID = (select isnull(pAtananKullanici, 32)
--from Gusto.BPMFT_SATINALMASIPARIS
--WHERE PFAALIYET = @pFaaliyet))


--Revize Edildi Buğra 
set @pPersonel=(select pd.pPersonelKodu from GUSTO00001.PersonelDetayi pd
inner join Gusto.Kullanici k on k.Adi=pd.sGustoKullanici
inner join Gusto.EPMKULLANICI epm on epm.PGUSTOKULLANICISI=k.Kullanici_rowid
where epm.EPMKULLANICI_ROWID=(select isnull(pAtananKullanici, 1)
from Gusto.BPMFT_SATINALMASIPARIS
WHERE PFAALIYET = @pFaaliyet))

--Verilen Sipariş Başlık
insert into GUSTO00001.VerilenSiparisBaslik(sSeri,lNo,dtTarih,dtTeslimTarihi,cCariTuru,
pCari,cSiparisBilgiFarkli,pPersonel,cOnayDurumu,cTeslimatDurumu,
pOlusturanKullanici,dtOlusturma,tmOlusturma,cAcikKapali,cSiparisDondurulmus,
cSevkEmrineAktarildi, cSiparisFormuOlusturuldu)
select 'VS', @No, @getDate, SAS.dtTeslimTarihi, 'C',
sas.pTedarikci, 'H', @pPersonel, 'G', '0',
@pOlusturan, @getDate, @tmOlusturma, 'A', 'H',
'H', 'H'
from Gusto.BPMFT_SATINALMASIPARIS sas
left join Gusto.EPMFaaliyet ef on sas.PFAALIYET = ef.EPMFAALIYET_ROWID
where sas.PFAALIYET = @pFaaliyet

set @VerilenSiparisBaslik_rowid = SCOPE_IDENTITY();

update GUSTO00001.VerilenSiparisBaslik set sAciklama=@sAciklama where VerilenSiparisBaslik_rowid=@VerilenSiparisBaslik_rowid;

DECLARE @UsdKur decimal(22,12);

set @UsdKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=2
and convert(date,dtTarih)=convert(date, GETDATE())), 0);

DECLARE @EurKur decimal(22,12);

set @EurKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=3
and convert(date,dtTarih)=convert(date, GETDATE())), 0);

DECLARE @HdKur decimal(22,12);

set @HdKur = isnull((SELECT dSatis FROM Gusto.DovizKuru WHERE pDovizYeri=1 and pDoviz=
(select mus.pDoviz
from Gusto.BPMFT_SATINALMASIPARIS sas
left join GUSTO00001.MusteriSaticiKodu mus on mus.MusteriSaticiKodu_rowid = sas.pTedarikci
where sas.PFAALIYET = @pFaaliyet)
and convert(date,dtTarih)=convert(date, GETDATE())), 0);


--Verilen Sipariş Satır

insert into GUSTO00001.VerilenSiparisSatir(pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,
--pIzlemeKodu,
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
cBaglanti,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,cSatirOnayDurumu,
nVadeSuresi)

select @VerilenSiparisBaslik_rowid, 'VS', @No, 'S', sass.pStok,
--sass.pIzlemeKodu,
sass.dtTeslimTarihi, '1', sass.ldMiktar,'1',
sass.ldKDVOran,
--Tl tutarlar
case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * @UsdKur
when sass.pDoviz = 3 then sass.ldBirimFiyat_Doviz * @EurKur
else sass.ldBirimFiyat end,

case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @EurKur
else sass.ldBirimFiyat * (100 + sass.ldKDVOran) / 100 end,

case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end,

case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @EurKur
else sass.ldKDVTutar end,

case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end,

@getDate, ROW_NUMBER() OVER(ORDER BY sass.ROWID ASC) AS RowNumber, 'C',
sas.pTedarikci,-- ISNULL(fls.FiyatListesiSatir_rowid, 0),

--Sistem Dövizi Tutarlar
case when @EurKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * @EurKur
else sass.ldBirimFiyat end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @EurKur
else sass.ldBirimFiyat * (100 + sass.ldKDVOran) / 100 end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @EurKur
else sass.ldKDVTutar end) / @EurKur 
else 0 end,

case when @EurKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end) / @EurKur 
else 0 end,


sass.ldBirimFiyat_Doviz,sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100, sass.ldToplamTutar_Doviz,
sass.ldKDVTutar_Doviz, sass.ldToplamTutar_Doviz,

--HesapDöviziTutarlar
case when @HdKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * @EurKur
else sass.ldBirimFiyat end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldBirimFiyat_Doviz * (100 + sass.ldKDVOran) / 100 * @EurKur
else sass.ldBirimFiyat * (100 + sass.ldKDVOran) / 100 end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldKDVTutar_Doviz * @EurKur
else sass.ldKDVTutar end) / @HdKur 
else 0 end,

case when @HdKur > 0 
then (case when sass.pDoviz = 2 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @UsdKur
when sass.pDoviz = 3 and sass.ldBirimFiyat_Doviz > 0 then sass.ldToplamTutar_Doviz * @EurKur
else sass.ldToplamTutar end) / @HdKur 
else 0 end,

case when sass.pDoviz in (0 ,1) or sass.ldBirimFiyat_Doviz = 0 then 0 else sass.pDoviz end,
case when sass.pDoviz in (0 ,1) or sass.ldBirimFiyat_Doviz = 0 then 0 else sass.pDoviz_DovizYeri end,
case when sass.pDoviz in (0 ,1) or sass.ldBirimFiyat_Doviz = 0 then 0 else sass.pDoviz_DovizTuru + 1 end,
@EurKur,

@pOlusturan, @getDate, @tmOlusturma,
'Z', 'A', 'H', 'H', 'G',
case when @nCariVade>0 then @nCariVade else 0 end
from Gusto.BPMFT_SATINALMASIPARIS sas
inner join Gusto.BPMCG_SIPARISSATIRLARI sass on sas.ROWID = sass.PPARENT
left join GUSTO00001.StokKodu sk on sass.pStok = sk.StokKodu_rowid
left join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
where sas.PFAALIYET = @pFaaliyet

--Talep Satırında ki Satır Durumları ve İşlem Açıklama Alanı Güncellendi.
update Gusto.BPMCG_SATINALMATALEPSATIRLARI set pSatirDurum=1210,
sIslemAciklama=
(
	select CONCAT(sSeri,'-',lNo) from GUSTO00001.VerilenSiparisBaslik where VerilenSiparisBaslik_rowid=@VerilenSiparisBaslik_rowid
) where ROWID in

(
	select sass.pTalepSatirRowid from Gusto.BPMFT_SATINALMASIPARIS sas
	inner join Gusto.BPMCG_SIPARISSATIRLARI sass on sas.ROWID = sass.PPARENT
	left join GUSTO00001.StokKodu sk on sass.pStok = sk.StokKodu_rowid
	left join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
	where sas.PFAALIYET = @pFaaliyet
)


insert into GUSTO00001.FaturaKDV(cBelgeTuru,pBaslik,ldKDVOncesiTutar,
ldKDVOrani,ldKDVTutari,ldYuvarlamaFarki)
select 'VS', @VerilenSiparisBaslik_rowid, sum(ldBirimFiyatKDVsiz * ldMalMiktari1Birim),
ldKDVOrani, sum(ldToplamKDV), 0
from GUSTO00001.VerilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid
group by ldKDVOrani


insert into GUSTO00001.StokHarOdemePlani(cHareketTuru,pHareket,ldOdemeTutari,fYuzde,nVadeSureHesapTipi,
nVadeSureYuvTipi,dtOrginalTarih)
select '4', VerilenSiparisSatir_rowid, ldBirimFiyatKDVli * ldMalMiktari1Birim, 100, 1,3,

--Eğer Vadenin Son Günü Pazar ise Vade Süresi Pazartesi olacak.
case when @nCariVade>0 then 
	case when DATENAME(WEEKDAY,DATEADD(DAY,@nCariVade,cast(GETDAte() as date)))='Sunday' or DATENAME(WEEKDAY,DATEADD(DAY,@nCariVade,cast(GETDAte() as date)))='Pazar' then
		DATEADD(DAY,@nCariVade+1,cast(GETDAte() as date)) else DATEADD(DAY,@nCariVade,cast(GETDAte() as date)) end
	 else @getDate end --Cariye ait özel bir vade varsa StokHarOdemePlani tablosunda ki dtOrijinalTarih alanı bu şekilde hesaplanabilir.

from GUSTO00001.VerilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid

update GUSTO00001.VerilenSiparisBaslik
SET ldToplamTutar = (SELECT sum(ldBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid),

ldToplamKDV = (SELECT sum(ldToplamKDV)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid),

ldsdToplamTutar = (SELECT sum(ldsdBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid),

ldsdToplamKDV = (SELECT sum(ldsdToplamKDV)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid),

ldhdToplamTutar = (SELECT sum(ldhdBirimFiyatKDVli * ldMalMiktari1Birim)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid),

ldhdToplamKDV = (SELECT sum(ldhdToplamKDV)
FROM GUSTO00001.verilenSiparisSatir
where pBaslik = @VerilenSiparisBaslik_rowid)

where VerilenSiparisBaslik_rowid = @VerilenSiparisBaslik_rowid
--select pVerilenSiparis, * from Gusto.BPMFT_SATINALMASIPARIS

update Gusto.BPMFT_SATINALMASIPARIS
set pVerilenSiparis = @VerilenSiparisBaslik_rowid,
pVerilenSiparisBaslikRowid = @VerilenSiparisBaslik_rowid
where PFAALIYET = @pFaaliyet

--- INSERT VerilenSiparisBaslik #4 sSeri,lNo,dtTarih,dtTeslimTarihi,cCariTuru,pCari,
--cSiparisBilgiFarkli,pPersonel,cOnayDurumu,cTeslimatDurumu,pOlusturanKullanici,
--dtOlusturma,tmOlusturma,cAcikKapali,cSiparisDondurulmus,cSevkEmrineAktarildi,
--cSiparisFormuOlusturuldu

--'VS',5,'30.11.2016','30.11.2016','C',1,
--'H',1,'G','0',1,
--'30.11.2016',143237,'A','H','H',
--'H'



--- INSERT VerilenSiparisSatir #4 pBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,--*-*1
--pIzlemeKodu,dtTeslimTarihi,cKacinciBirim,ldMalMiktari1Birim,cKapatmaBirimi,--*-*2
--ldKDVOrani,ldBirimFiyatKDVsiz,ldBirimFiyatKDVli,ldToplamFiyatKDVsiz,ldToplamKDV,--*-*3
--ldIskontoSonrasiTutar,dtTarih,nSira,cCariTuru,pCari,ldsdBirimFiyatKDVsiz,--*-*4
--ldsdBirimFiyatKDVli,ldsdToplamFiyatKDVsiz,ldsdToplamKDV,ldsdIskontoSonrasiTutar,--*-*5
--ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,ldhrkdToplamKDV,--*-*6
--ldhrkdIskontoSonrasiTutar,pDoviz,pDovizYeri,cKurTuru,pOlusturanKullanici,dtOlusturma,--*-*7
--tmOlusturma,cBaglanti,ldSetMiktari,cAcikKapali,cSiparisDondurulmus,--*-*8
--cSevkEmrineAktarildi,cSatirOnayDurumu --*-*9

--4,'VS',5,'S',778,--*-*1
--3416,'30.11.2016','1',1,'1',--*-*2
--18,1,1.18,1,0.18,--*-*3
--1,'30.11.2016',1,'C',1,0.3226,--*-*4
--0.380645161,0.32,0.05,0.32,--*-*5
--0.303,0.35454,0.3,0.0545,--*-*6
--0.3,2,1,'1',1,'30.11.2016',--*-*7
--143237,'Z',3.3,'A','H',--*-*8
--'H','G' --*-*9



--- UPDATE StokDetay #778 ldVSiparisMiktari=ldVSiparisMiktari+1 


--- UPDATE VerilenSiparisSatir #4 pBaslik=4,sSeri='VS',lNo=5,cStokHizmetDemirbas='S',pStokKodu=778,
--pIzlemeKodu=3416,dtTeslimTarihi='30.11.2016',cKacinciBirim='1',ldMalMiktari1Birim=1,
--cKapatmaBirimi='1',ldKDVOrani=18,ldBirimFiyatKDVsiz=1,ldBirimFiyatKDVli=1.18,
--ldToplamFiyatKDVsiz=1,ldToplamKDV=0.18,ldIskontoSonrasiTutar=1,dtTarih='30.11.2016',
--nSira=1,cCariTuru='C',pCari=1,ldsdBirimFiyatKDVsiz=0.3226,ldsdBirimFiyatKDVli=0.380645161,
--ldsdToplamFiyatKDVsiz=0.32,ldsdToplamKDV=0.05,ldsdIskontoSonrasiTutar=0.32,
--ldhrkdBirimFiyatKDVsiz=0.303,ldhrkdBirimFiyatKDVli=0.35454,ldhrkdToplamFiyatKDVsiz=0.3,
--ldhrkdToplamKDV=0.0545,ldhrkdIskontoSonrasiTutar=0.3,pDoviz=2,pDovizYeri=1,cKurTuru='1',
--pOlusturanKullanici=1,dtOlusturma='30.11.2016',tmOlusturma=143237,ldSetMiktari=3.3,
--cAcikKapali='A',cSiparisDondurulmus='H' <Flush> 31.00 msecs. 


--- delete from GUSTO00001.FaturaKDV where ((pBaslik=4 AND ldKDVOrani=0) AND cBelgeTuru='VS') 



--- INSERT FaturaKDV #11 cBelgeTuru,pBaslik,ldKDVOncesiTutar,ldKDVOrani,ldKDVTutari 'VS',4,1,18,0.18 


--- INSERT StokHarOdemePlani #8 cHareketTuru,pHareket,ldOdemeTutari,fYuzde,nVadeSureHesapTipi,
--nVadeSureYuvTipi,dtOrginalTarih 
--'4',4,1.18,100,1,
--3,'30.11.2016'



--- UPDATE VerilenSiparisBaslik #4 ldToplamTutar=1.18,ldToplamKDV=0.18,ldsdToplamTutar=0.37,
--ldsdToplamKDV=0.05,pDegistirenKullanici=1,dtDegistirme='30.11.2016',tmDegistirme=143237

--set @PR_ID1=@VerilenSiparisBaslik_rowid;
		
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