SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_EkAlanUpdateInsert_GTIP]
	
	@sStokKodu varchar(100),
	@sGtip varchar(40)

AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
  
declare @StokKodu_Rowid int; 

set @StokKodu_Rowid=(select StokKodu_rowid from GUSTO00001.StokKodu where sKod=@sStokKodu);

if @StokKodu_Rowid>0 begin


	if exists (select * from GUSTO00001.stokEkAlanMetin where pOwnerID=@StokKodu_Rowid and pEkAlanTanimi=51) begin

		update GUSTO00001.stokEkAlanMetin set sMetin=@sGtip where pOwnerID=@StokKodu_Rowid and pEkAlanTanimi=51;

		insert ##Guncelleme_Gtip (StokKodu_Rowid,sGtip) values (@StokKodu_Rowid,@sGtip);

	end

	else begin

		insert into GUSTO00001.stokEkAlanMetin (pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma) values
		(51,'SK',@StokKodu_Rowid,@sGtip,1,CAST(GETDATE() as date),cast(REPLACE(CONVERT(varchar(10),GETDATE(),108),':','') as int));

		insert ##Insert_Gtip (StokKodu_Rowid,sGtip) values (@StokKodu_Rowid,@sGtip);

	end

end

else begin


insert into ##GecersizKod_Gtip (sKod) values (@sStokKodu);

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