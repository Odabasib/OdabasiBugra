SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_FiyatListesiOlusturma] 
(
	@pCari int,
	@pFaaliyet int,
	@pVerilenTeklif int,
	@pOlusturanKullanici int,	
	@p_ID int OUTPUT

)

AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


declare @sFiyatListesiAd varchar(255);
declare @dtFiyatListesiBaslangic datetime;
declare @dtFiyatListesiBitis datetime;
set @dtFiyatListesiBaslangic=(select cast(DATEADD(yy, DATEDIFF(yy,0,getdate()), 0) as date));
set @dtFiyatListesiBitis=(select cast(DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE())+1,0))) as date));
declare @sVerilenTeklifKod varchar(30);
declare @sAciklama varchar(60);
set @sVerilenTeklifKod=(select SKODU from Gusto.EPMKart where EPMKART_ROWID=@pVerilenTeklif);
set @sFiyatListesiAd=(select left(sAd,30) from GUSTO00001.MusteriSaticiKodu where MusteriSaticiKodu_rowid=@pCari);

set @sAciklama=(CONCAT(@sVerilenTeklifKod,' Verilen Teklif Fiyatlandirmasından Oluşmuştur.'));

INSERT INTO Gusto00001.FiyatListesiAd (sFiyatListesiAdi,cGirisCikis,dtBaslangicTarih,dtBitisTarih,pOlusturanKullanici,dtOlusturma,tmOlusturma,bTumKullanicilar,bTumCariler,cOnayDurumu,sAciklama,bOndegerMi)
values (@sFiyatListesiAd,'1',@dtFiyatListesiBaslangic,@dtFiyatListesiBitis,@pOlusturanKullanici,cast(GETDATE() as date),REPLACE(CONVERT(varchar(10),GETDATE(),108),':',''),0,0,'G',@sAciklama,1);

declare @FiyatListesiAd int;

set @FiyatListesiAd=SCOPE_IDENTITY();

INSERT INTO Gusto00001.FiyatListesiCari(pFiyatListesiAd,cTur,pCari) values(@FiyatListesiAd,'C',@pCari);


declare @ldBirimFiyat decimal(22,6);
declare @ldBirimFiyat_Doviz decimal(22,6);
declare @pDoviz int;
declare @pDoviz_Yeri int;
declare @pDoviz_Turu int;
declare @pStok int;

DECLARE FiyatListesiSatirlari CURSOR FOR

select pDoviz,pDoviz_DovizTuru,pDoviz_DovizYeri,pStok,ldBirimFiyat,ldBirimFiyat_Doviz from Gusto.BPMCG_VTBirimFiyatSatirlar where 
PPARENT=(select ROWID from Gusto.BPMFT_VTBIRIMFIYATLANDIRMA where PFAALIYET=@pFaaliyet);


OPEN FiyatListesiSatirlari
FETCH NEXT FROM FiyatListesiSatirlari INTO @pDoviz,@pDoviz_Turu,@pDoviz_Yeri,@pStok,@ldBirimFiyat,@ldBirimFiyat_Doviz
WHILE @@FETCH_STATUS =0

BEGIN


INSERT INTO [GUSTO00001].[FiyatListesiSatir]
           ([pFiyatListesiAd]
           ,[nBaslikTur]
           ,[cStokHizmet]
           ,[pStokKodu]
           ,[cKDVDahilHaric]
           ,[ldBrutFiyat]
           ,[ldNetFiyat]
           ,[ldBrutFiyatYTL]
           ,[ldNetFiyatYTL]
           ,[cKacinciBirim]
           ,[ldMaximumSiparisMiktari]
           ,[ldMaximumSiparisTutari]
           ,[pDoviz]
           ,[pDovizYeri]
           ,[cDovizTuru]         
           ,[dtBaslangicTarih]
           ,[dtBitisTarih]
           ,[pOlusturanKullanici]
           ,[dtOlusturma]
           ,[tmOlusturma])

		
		select @FiyatListesiAd,0,'S',@pStok,'H',case when @pDoviz>0 then @ldBirimFiyat_Doviz else @ldBirimFiyat end,
		case when @pDoviz>0 then @ldBirimFiyat_Doviz else @ldBirimFiyat end,
		case when @pDoviz>0 then @ldBirimFiyat_Doviz else @ldBirimFiyat end,
		case when @pDoviz>0 then @ldBirimFiyat_Doviz else @ldBirimFiyat end,0,99999999999.899994,99999999999.90,@pDoviz,@pDoviz_Yeri,@pDoviz_Turu,@dtFiyatListesiBaslangic,@dtFiyatListesiBitis,@pOlusturanKullanici,CAST(GETDATE() as date),
		REPLACE(CONVERT(varchar(10),GETDATE(),108),':','');



FETCH NEXT FROM FiyatListesiSatirlari INTO @pDoviz,@pDoviz_Turu,@pDoviz_Yeri,@pStok,@ldBirimFiyat,@ldBirimFiyat_Doviz
		
END

CLOSE FiyatListesiSatirlari

DEALLOCATE FiyatListesiSatirlari

if((select pTeklifTuru from Gusto.BPMKT_VERILENTEKLIF where PKART=@pVerilenTeklif)=1111) begin


	insert into GUSTO00001.FiyatListesiYetki (pFiyatListeAd,pKullanici)
	select @FiyatListesiAd,pKullanici from Gusto.KullaniciYetkiGrubu where pYetkiGrubu=8  --YurtDışıSatış Gusto Yetki Grubu Kullanıcıları için yetkiler

end


set @p_ID=@FiyatListesiAd;

		
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