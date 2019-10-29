SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[AlinanTeklifOlustur] 
	@pFaaliyet int,
	@pKullanici int
AS 

BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @pTedarikci int;
declare @Seri_Rowid int;
declare @nSeriNo int;

set @Seri_Rowid=(select Seri_rowid from GUSTO00001.Seri where sSeri='BPM-AT' and nHareketTuru=3600)


declare db_cursor cursor for 
select distinct pTedarikci
from Gusto.BPMCG_TEKLIFISTEMESATIRLAR
WHERE PPARENT = (select ROWID from Gusto.BPMFT_TEKLIFISTEME
WHERE PFAALIYET = @pFaaliyet)

print('1');
	
	OPEN db_cursor  

	FETCH NEXT FROM db_cursor INTO @pTedarikci

	while @@FETCH_STATUS = 0
	begin

		if @pTedarikci != 0 begin

			declare @EPMFAALIYET_ROWID int;
			DECLARE @TEKLIF_ROWID int;

			set @nSeriNo=(select nNo+1 from GUSTO00001.Seri where sSeri='BPM-AT' and nHareketTuru=3600);

			insert into Gusto.EPMFaaliyet(PFAALIYETTURU, DTPLANSTART, DTPLANEND, DTSTART, DTEND,
			KONU, STIMERVALUE, PKULLANICI, DTOLUSTURMA, POLUSTURAN, PFIRMA)
			values(2, GETDATE(), GETDATE(), GETDATE(), GETDATE(),
			'Aktarım ile oluştu', '', @pKullanici, GETDATE(), @pKullanici, 1)

			set @EPMFAALIYET_ROWID = SCOPE_IDENTITY();

			insert into Gusto.BPMFT_TEKLIF(PFAALIYET, dtTeklifTarihi, pDepartman, pTedarikci,pSeri,nNo,pAtananKullanici)
			VALUES(@EPMFAALIYET_ROWID, GETDATE(), 0, @pTedarikci,@Seri_Rowid,@nSeriNo, @pKullanici)

			set @TEKLIF_ROWID = SCOPE_IDENTITY();

			update GUSTO00001.Seri set nNo=nNo+1 where nHareketTuru=3600 and sSeri='BPM-AT';

			insert into Gusto.BPMCG_TeklifSatirlari(PPARENT, pTalepId, pStokKodu, 
			ldMiktar,
			ldKalanMiktar,
			pDeptKullanici, pTeklifDepartmanOnay,
			pTeklifYonetimOnay, pUstYonetimOnay,
			pSatTalepKart,
			pDovizSecimi, pDovizSecimi_DovizYeri, pDovizSecimi_DovizTuru,
			pDovizSecimi_KurTarihi, pDovizSecimi_Kur,
			ldBirimFiyat, ldBirimFiyat_Doviz,
			ldToplamFiyat, ldToplamFiyat_Doviz,
			ldKDVTutari, ldKDVTutari_Doviz,
			ldKDVDahilToplamTutar, ldKDVDahilToplamTutar_Doviz,
			nKDVOrani,
			dtIhtiyac
			)
			SELECT @TEKLIF_ROWID, tis.pTalepSatirROWID,tis.pStok, 
			--tis.pIzlemeKodu, 
			tis.ldMiktar,
			tis.ldMiktar,
			@pKullanici, 15,
			sts.pUstYonetimOnayKullanici, 18,
			st.PKART,
			ts.pDovizSecimi, ts.pDovizSecimi_DovizYeri, ts.pDovizSecimi_DovizTuru,
			ts.pDovizSecimi_KurTarihi, ts.pDovizSecimi_Kur,
			ts.ldBirimFiyat, ts.ldBirimFiyat_Doviz,
			ts.ldToplamFiyat / ts.ldMiktar * tis.ldMiktar, ts.ldToplamFiyat_Doviz / ts.ldMiktar * tis.ldMiktar,
			ts.ldKDVTutari / ts.ldMiktar * tis.ldMiktar, ts.ldKDVTutari_Doviz / ts.ldMiktar * tis.ldMiktar,
			ts.ldKDVDahilToplamTutar / ts.ldMiktar * tis.ldMiktar, ts.ldKDVDahilToplamTutar_Doviz / ts.ldMiktar * tis.ldMiktar,
			sd.ldAlisKDV,
			sts.dtTermin
			FROM Gusto.BPMCG_TEKLIFISTEMESATIRLAR tis
			left join GUSTO.BPMCG_SATINALMATALEPSATIRLARI sts on tis.pTalepSatirROWID = sts.ROWID
			left join GUSTO00001.StokDetay sd on tis.pStok = sd.pStokKodu
			left join Gusto.BPMKT_SATINALMATALEP st on sts.PPARENT = st.ROWID
			left join (select ts.pStokKodu, t.pTedarikci,
				MAX(ts.ROWID) maxRowid
				from Gusto.BPMCG_TeklifSatirlari ts
				left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
				group by ts.pStokKodu, t.pTedarikci) tsMax on tis.pStok = tsMax.pStokKodu 
															
																	and tis.pTedarikci = tsMax.pTedarikci
			left join Gusto.BPMCG_TeklifSatirlari ts on tsMax.maxRowid = ts.ROWID
			WHERE tis.pTedarikci = @pTedarikci and tis.PPARENT = (select ROWID from Gusto.BPMFT_TEKLIFISTEME
			WHERE PFAALIYET = @pFaaliyet)
			--1208 Teklif İsteme Talebi Yapıldı,Veriler Girilecek

			-----------


			update Gusto.BPMCG_SATINALMATALEPSATIRLARI set pSatirDurum=1208 where ROWID in

			(SELECT  tis.pTalepSatirROWID
			FROM Gusto.BPMCG_TEKLIFISTEMESATIRLAR tis
			left join GUSTO.BPMCG_SATINALMATALEPSATIRLARI sts on tis.pTalepSatirROWID = sts.ROWID
			left join GUSTO00001.StokDetay sd on tis.pStok = sd.pStokKodu
			left join Gusto.BPMKT_SATINALMATALEP st on sts.PPARENT = st.ROWID
			left join (select ts.pStokKodu, t.pTedarikci,
				MAX(ts.ROWID) maxRowid
				from Gusto.BPMCG_TeklifSatirlari ts
				left join Gusto.BPMFT_TEKLIF t on ts.PPARENT = t.ROWID
				group by ts.pStokKodu, t.pTedarikci) tsMax on tis.pStok = tsMax.pStokKodu 
															
																	and tis.pTedarikci = tsMax.pTedarikci
			left join Gusto.BPMCG_TeklifSatirlari ts on tsMax.maxRowid = ts.ROWID
			WHERE tis.pTedarikci = @pTedarikci and tis.PPARENT = (select ROWID from Gusto.BPMFT_TEKLIFISTEME
			WHERE PFAALIYET = @pFaaliyet))


			-----------


		end

	fetch next from db_cursor INTo @pTedarikci
	end
--
close db_cursor
deallocate db_cursor

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