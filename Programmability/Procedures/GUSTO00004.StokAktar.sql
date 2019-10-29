SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00004].[StokAktar] 
	@sKod varchar(300),
	@sAd varchar(300)

AS 
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


declare @StokKodu_Rowid int;
declare @StokDetay_Rowid int;




insert into GUSTO00004.StokKodu (sKod,sAd,cIzlemeKodlariVarmi,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values (@sKod,@sAd,'H',1,getdate(),'111111')
set @StokKodu_Rowid = SCOPE_IDENTITY();

insert into GUSTO00004.StokDetay(pStokKodu,sBirinciBirimAdi,cIkinciBirimCarpanBolen,cUcuncuBirimCarpanBolen,cFaturaAltiIskonto,cSatirIskonto,cDovizTurAlis,cDovizTurSatis,nFireYuvHassasiyet,bRezervasyonSistemineDahil)
values (@StokKodu_Rowid,'Adet','C','C','E','E',48,48,1,1)
set @StokDetay_Rowid = SCOPE_IDENTITY();

update GUSTO00001.StokKodu set pStokDetayi = @StokDetay_Rowid where StokKodu_rowid = @StokDetay_Rowid



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