SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[UrunAgaciMalzeme]
       
	 @UrunAgaciKodu varchar(200),
     @MalzemeKodu varchar(200),
	 @Depokodu varchar(30),
	 @Miktar varchar(30)
      
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
      

declare @ldMiktar decimal(22,6)
declare @pUrunAgaciKodu int;
declare @pStokKodu int;
declare @pDepoKodu int;
set @pUrunAgaciKodu = (select UrunAgaclari_rowid from GUSTO00001.UrunAgaclari where sKod =@UrunAgaciKodu)
set @pStokKodu = (select StokKodu_rowid from GUSTO00001.StokKodu where sKod = @MalzemeKodu)
set @pDepoKodu =(select DepoKodu_rowid from GUSTO00001.DepoKodu where sKod = @Depokodu)
set @ldMiktar = (select replace(@Miktar,',','.'))

declare @Kontrol int;

set @Kontrol =( select count(*) from GUSTO00001.Malzemeler where pUrunAgaciKodu =@pUrunAgaciKodu and pDepoKodu =@pDepoKodu and pStokKodu = @pStokKodu)

if (@Kontrol=0)
begin
insert into GUSTO00001.Malzemeler(pUrunAgaciKodu,cStokHizmet,pStokKodu,ldKullanimMiktari1,dtGecerlilikBaslama,dtGecerlilikBitis,pDepoKodu,cKacinciBirim)
values
(@pUrunAgaciKodu,'S',@pStokKodu,@ldMiktar,getdate(),getdate(),@pDepoKodu,'1')
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