SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[TekliftenSiparisOlustur]
@pKullanici int
AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


declare @nTest int;
SET @nTest = (select COUNT(*) from Gusto.BPMCG_TeklifSatirlari ts
left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
where ts.ldOnaylananMiktar > 0
and ts.ROWID not in (select pTeklifSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and case when ts.bUYGerekli = 1 THEN ts.pUstYonetimOnay ELSE 19 END = 19
--and case when ts.bUYGerekli = 1 THEN 1 ELSE ts.bDeptDegKapanis END = 1
AND t.pAtananKullanici > 0
and t.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu));

if @nTest > 0
begin

declare @nOfSip int;

set @nOfSip = (select count(*) from (
select pTedarikci, pAtananKullanici from Gusto.BPMCG_TeklifSatirlari ts
left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
where ts.ldOnaylananMiktar > 0
and ts.ROWID not in (select pTeklifSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and case when ts.bUYGerekli = 1 THEN ts.pUstYonetimOnay ELSE 19 END = 19
--and case when ts.bUYGerekli = 1 THEN 1 ELSE ts.bDeptDegKapanis END = 1
AND t.pAtananKullanici > 0
and t.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
group by pTedarikci, pAtananKullanici
) a)


declare @rowNumber int;

set @rowNumber = 1;

while @rowNumber <= @nOfSip

begin

declare @pTedarikci int;

set @pTedarikci = (select b.pTedarikci from (select a.pTedarikci, a.pAtananKullanici,
ROW_NUMBER() over(order by a.pTedarikci, a.pAtananKullanici) RowNumber
from(select pTedarikci, pAtananKullanici from Gusto.BPMCG_TeklifSatirlari ts
left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
where ts.ldOnaylananMiktar > 0
and ts.ROWID not in (select pTeklifSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and case when ts.bUYGerekli = 1 THEN ts.pUstYonetimOnay ELSE 19 END = 19
--and case when ts.bUYGerekli = 1 THEN 1 ELSE ts.bDeptDegKapanis END = 1
AND t.pAtananKullanici > 0
and t.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
) a
group by a.pTedarikci, a.pAtananKullanici) b
where b.rowNumber = 1)

declare @pAtananKullanici int;

set @pAtananKullanici = (select b.pAtananKullanici from (select a.pTedarikci, a.pAtananKullanici,
ROW_NUMBER() over(order by a.pTedarikci, a.pAtananKullanici) RowNumber
from(select pTedarikci, pAtananKullanici from Gusto.BPMCG_TeklifSatirlari ts
left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
where ts.ldOnaylananMiktar > 0
and ts.ROWID not in (select pTeklifSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and case when ts.bUYGerekli = 1 THEN ts.pUstYonetimOnay ELSE 19 END = 19
--and case when ts.bUYGerekli = 1 THEN 1 ELSE ts.bDeptDegKapanis END = 1
AND t.pAtananKullanici > 0
and t.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
) a
group by a.pTedarikci, a.pAtananKullanici) b
where b.rowNumber = 1)


SELECT @pTedarikci, @pAtananKullanici, @rowNumber

DECLARE @EpmFaaliyet_rowid int;

insert into Gusto.EPMFaaliyet(PFAALIYETTURU, DTPLANSTART, DTPLANEND, DTSTART, DTEND, DTOLUSTURMA, DTDEGISTIRME,
PKULLANICI, POLUSTURAN, PDEGISTIREN, PFIRMA)
VALUES(9, GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE(),
@pKullanici, @pKullanici, @pKullanici, 1)

SET @EpmFaaliyet_rowid = SCOPE_IDENTITY();

declare @pParent int;

insert into Gusto.BPMFT_SATINALMASIPARIS(PFAALIYET, dtSiparis, pTedarikci, pAtananKullanici)
values(@EpmFaaliyet_rowid, GETDATE(), @pTedarikci, @pAtananKullanici)

set @pParent = SCOPE_IDENTITY();

insert into Gusto.BPMCG_SIPARISSATIRLARI(PPARENT, pStok, 
--pIzlemeKodu, 
ldMiktar, pDoviz,
pDoviz_DovizYeri, pDoviz_DovizTuru, pDoviz_KurTarihi, pDoviz_Kur,
ldBirimFiyat, ldBirimFiyat_Doviz, ldToplamTutar, ldToplamTutar_Doviz,
ldKDVOran, ldKDVTutar,
ldKDVTutar_Doviz,
ldGenelToplam,
ldGenelToplam_Doviz,
pTalepSatirRowid,
pTeklifSatirRowid,
nVadeSuresi)
select @pParent, ts.pStokKodu, 
--ts.pIzlemeKodu, 
ts.ldOnaylananMiktar, ts.pDovizSecimi,
ts.pDovizSecimi_DovizYeri, ts.pDovizSecimi_DovizTuru, ts.pDovizSecimi_KurTarihi, ts.pDovizSecimi_Kur,
ts.ldBirimFiyat, ts.ldBirimFiyat_Doviz, ts.ldBirimFiyat * ldOnaylananMiktar, ts.ldBirimFiyat_Doviz * ldOnaylananMiktar,
ISNULL(sd.ldAlisKDV, 0), ts.ldBirimFiyat * ldOnaylananMiktar * ISNULL(sd.ldAlisKDV, 0) / 100,
case when ts.pDovizSecimi_Kur = 0 then 0 else (ts.ldBirimFiyat * ldOnaylananMiktar * ISNULL(sd.ldAlisKDV, 0) / 100) / ts.pDovizSecimi_Kur end,
ts.ldBirimFiyat * ldOnaylananMiktar + (ts.ldBirimFiyat * ldOnaylananMiktar * ISNULL(sd.ldAlisKDV, 0) / 100),
case when ts.pDovizSecimi_Kur=0 then 0 else (ts.ldBirimFiyat * ldOnaylananMiktar * ((100 + ISNULL(sd.ldAlisKDV, 0))/100))/ts.pDovizSecimi_Kur end,
ts.pTalepId,
ts.ROWID,
ts.nVadeSuresi
from Gusto.BPMCG_TeklifSatirlari ts
left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
left join GUSTO00001.StokDetay sd on ts.pStokKodu = sd.pStokKodu
where ts.ldOnaylananMiktar > 0
and ts.ROWID not in (select pTeklifSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and case when ts.bUYGerekli = 1 THEN ts.pUstYonetimOnay ELSE 19 END = 19
--and case when ts.bUYGerekli = 1 THEN 1 ELSE ts.bDeptDegKapanis END = 1
AND t.pAtananKullanici > 0
and t.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
and t.pAtananKullanici = @pAtananKullanici
and t.pTedarikci = @pTedarikci

declare @sAciklama varchar(255);
set @sAciklama='';
exec GUSTO00001.SiparisOlustur @EpmFaaliyet_rowid, @pKullanici ,@sAciklama

set @rowNumber = @rowNumber + 1;

end

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