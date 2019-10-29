SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[TaleptenSiparisOlustur] 
@pKullanici int,
@sAciklama varchar(255)

AS 
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @nTest int;

set @nTest = (select COUNT(*) from Gusto.BPMCG_SATINALMATALEPSATIRLARI sts
WHERE sts.bTeklifAlinacakMi = 0
and sts.pAtananKullanici > 0
and sts.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
AND
(

(sts.ldToplamTutar >= (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND
STS.pDeptOnayDurum = 4 AND sts.pYonetimOnayDurumu = 8)
 
or

(sts.ldToplamTutar < (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND sts.pDeptOnayDurum = 4)

)

AND sts.ROWID not in (select pTalepSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
)

if @nTest > 0
begiN


declare @nOfSip int;

set @nOfSip = (select COUNT(*) from (
select a.pTedarikci, a.pAtananKullanici,
ROW_NUMBER() over(order by a.pTedarikci, a.pAtananKullanici) RowNumber
from(
select * from Gusto.BPMCG_SATINALMATALEPSATIRLARI sts
WHERE sts.bTeklifAlinacakMi = 0
and sts.pAtananKullanici > 0
and sts.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
AND
(

(sts.ldToplamTutar >= (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND
STS.pDeptOnayDurum = 4 AND sts.pYonetimOnayDurumu = 8)
 
or

(sts.ldToplamTutar < (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND sts.pDeptOnayDurum = 4)

)

AND sts.ROWID not in (select pTalepSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
) a
group by a.pTedarikci, a.pAtananKullanici
) b)


declare @rowNumber int;

set @rowNumber = 1;

while @rowNumber <= @nOfSip

begin

declare @pTedarikci int;

set @pTedarikci = (select b.pTedarikci from (select a.pTedarikci, a.pAtananKullanici,
ROW_NUMBER() over(order by a.pTedarikci, a.pAtananKullanici) RowNumber
from(
select * from Gusto.BPMCG_SATINALMATALEPSATIRLARI sts
WHERE sts.bTeklifAlinacakMi = 0
and sts.pAtananKullanici > 0
and sts.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
AND
(

(sts.ldToplamTutar >= (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND
STS.pDeptOnayDurum = 4 AND sts.pYonetimOnayDurumu = 8)
 
or

(sts.ldToplamTutar < (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND sts.pDeptOnayDurum = 4)

)

AND sts.ROWID not in (select pTalepSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
) a
group by a.pTedarikci, a.pAtananKullanici) b
where b.rowNumber = 1)

declare @pAtananKullanici int;

set @pAtananKullanici = (select b.pAtananKullanici from (select a.pTedarikci, a.pAtananKullanici,
ROW_NUMBER() over(order by a.pTedarikci, a.pAtananKullanici) RowNumber
from(
select * from Gusto.BPMCG_SATINALMATALEPSATIRLARI sts
WHERE sts.bTeklifAlinacakMi = 0
and sts.pAtananKullanici > 0
and sts.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
AND
(

(sts.ldToplamTutar >= (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND
STS.pDeptOnayDurum = 4 AND sts.pYonetimOnayDurumu = 8)
 
or

(sts.ldToplamTutar < (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART =33)
AND sts.pDeptOnayDurum = 4)

)

AND sts.ROWID not in (select pTalepSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
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

insert into Gusto.BPMFT_SATINALMASIPARIS (PFAALIYET, dtSiparis,dtTeslimTarihi, pTedarikci, pAtananKullanici)
values(@EpmFaaliyet_rowid, GETDATE(),GETDATE()+7, @pTedarikci, @pAtananKullanici)

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
pTalepSatirRowid,dtTeslimTarihi) 
select @pParent, sts.pStok, 
--sts.pIzlemeKodu, 
sts.ldMiktar, sts.pDoviz,
sts.pDoviz_DovizYeri, sts.pDoviz_DovizTuru, sts.pDoviz_KurTarihi, sts.pDoviz_Kur,
sts.ldBirimFiyat, sts.ldBirimFiyat_Doviz, sts.ldToplamTutar, sts.ldToplamTutar_Doviz,
ISNULL(sd.ldAlisKDV, 0), sts.ldToplamTutar * ISNULL(sd.ldAlisKDV, 0) / 100,
case when sts.pDoviz_Kur = 0 then 0 else (sts.ldToplamTutar * ISNULL(sd.ldAlisKDV, 0) / 100) / sts.pDoviz_Kur end,
sts.ldToplamTutar + (sts.ldToplamTutar * ISNULL(sd.ldAlisKDV, 0) / 100),
case when sts.pDoviz_Kur=0 then 0 else (sts.ldToplamTutar+(sts.ldToplamTutar*ISNULL(sd.ldAlisKDV, 0)/100))/sts.pDoviz_Kur end,
sts.ROWID,dtTermin
from Gusto.BPMCG_SATINALMATALEPSATIRLARI sts
left join GUSTO00001.StokDetay sd on sts.pStok = sd.pStokKodu
WHERE sts.bTeklifAlinacakMi = 0
and sts.pAtananKullanici > 0
and sts.pTedarikci in (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu)
AND
(
(sts.ldToplamTutar >= (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART = 33)
AND
STS.pDeptOnayDurum = 4 AND sts.pYonetimOnayDurumu = 8)
or
(sts.ldToplamTutar < (select ldLimit from Gusto.BPMKT_ONAYTUTAR where PKART = 33)
AND sts.pDeptOnayDurum = 4)
)
AND sts.ROWID not in (select pTalepSatirRowid from Gusto.BPMCG_SIPARISSATIRLARI)
and sts.pAtananKullanici = @pAtananKullanici
and sts.pTedarikci = @pTedarikci


EXEC GUSTO00001.SiparisOlustur @EpmFaaliyet_rowid, @pKullanici ,@sAciklama

set @rowNumber = @rowNumber + 1;

enD

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