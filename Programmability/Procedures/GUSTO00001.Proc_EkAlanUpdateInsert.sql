SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_EkAlanUpdateInsert]
	
	@sStokKodu varchar(100),
	@nTeminSüresi tinyint   

AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
  
declare @StokKodu_Rowid int; 

set @StokKodu_Rowid=(select StokKodu_rowid from GUSTO00001.StokKodu where sKod=@sStokKodu);

if @StokKodu_Rowid>0 begin


	if exists (select * from GUSTO00001.stokEkAlanSayi where pOwnerID=@StokKodu_Rowid and pEkAlanTanimi=14) begin

		update GUSTO00001.stokEkAlanSayi set ldSayi=@nTeminSüresi where pOwnerID=@StokKodu_Rowid and pEkAlanTanimi=14;

		insert ##Guncelleme (StokKodu_Rowid,nTeminSuresi) values (@StokKodu_Rowid,@nTeminSüresi);

	end

	else begin

		insert into GUSTO00001.stokEkAlanSayi (pEkAlanTanimi,cSahibinTuru,pOwnerID,ldSayi,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
		(14,'SK',@StokKodu_Rowid,cast(@nTeminSüresi as int),1,CAST(GETDATE() as date),cast(REPLACE(CONVERT(varchar(10),GETDATE(),108),':','') as int));

		insert ##Insert (StokKodu_Rowid,nTeminSuresi) values (@StokKodu_Rowid,@nTeminSüresi);

	end

end

else begin


insert into ##GecersizKod (sKod) values (@sStokKodu);

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