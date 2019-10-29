SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[AktarimFiyatListesiSatir]
       
       @pFiyatListesiAd int,
       @pDoviz int,
       @ldTutar varchar(100),
       @StokKodu varchar(200)
            
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
       
       DECLARE @pStokKodu int;
	   set @ldTutar = (select cast(round(replace(@ldTutar,',','.'),2) as decimal(22,2)));
       set @pStokKodu = (select StokKodu_rowid from GUSTO00001.StokKodu where sKod = @StokKodu);

	   if @pStokKodu!=0 and (select COUNT(*) from GUSTO00001.FiyatListesiSatir where pStokKodu=@pStokKodu and pFiyatListesiAd=61)=0 begin
       

       INSERT INTO [GUSTO00001].[FiyatListesiSatir]
           ([pFiyatListesiAd]
           ,[nBaslikTur]
           ,[cStokHizmet]
           ,[pStokKodu]
           ,[pIzlemeKodu]
           ,[pOdemeKosulu]
           ,[nReferans]
           ,[cKDVDahilHaric]
           ,[ldBrutFiyat]
           ,[ldNetFiyat]
           ,[ldBrutFiyatYTL]
           ,[ldNetFiyatYTL]
           ,[cKacinciBirim]
           ,[bNetFiyat]
           ,[bTutarSabit]
           ,[ldMinimumSiparisMiktari]
           ,[ldMinimumSiparisTutari]
           ,[ldMaximumSiparisMiktari]
           ,[ldMaximumSiparisTutari]
           ,[pDoviz]
           ,[pDovizYeri]
           ,[cDovizTuru]
           ,[cPromosyon]
           ,[dtBaslangicTarih]
           ,[dtBitisTarih]
           ,[pOlusturanKullanici]
           ,[dtOlusturma]
           ,[tmOlusturma]
           )
     VALUES
           (@pFiyatListesiAd,
           0,
           'S',
           @pStokKodu,
           0,
           0,
           1,
           'H',
           @ldTutar,
           @ldTutar,
           @ldTutar,
           @ldTutar,
           0,
           0,
           0,
           0,
           0,
           99999999999.899994,
           99999999999.899994,
           @pDoviz,
           1,
           0,
           '',
           '20190101',
		   '20211231',
		   1,
		   getdate(),
		   '090345'
           )

		   declare @FiyatListesiSatir int;
		   set @FiyatListesiSatir=SCOPE_IDENTITY();

			   if @FiyatListesiSatir!=0 begin

					print 'Başarılı Bir Şekilde Aktarıldı'

			   end

		   end

		   else begin

					print 'Fiyat Listesinde Mevcut'

		   end


COMMIT TRANSACTION
END TRY
BEGIN CATCH

DECLARE 
@ErrorMessage Nvarchar(4000),
@ErrorSeverity INT,
@ErrorState INT;
SELECT 
@ErrorMessage = ERROR_MESSAGE(),
@ErrorSeverity = ERROR_SEVERITY(),
@ErrorState = ERROR_STATE();
RAISERROR (
@ErrorMessage,
@ErrorSeverity,
@ErrorState    
);
ROLLBACK TRANSACTION
END CATCH
GO