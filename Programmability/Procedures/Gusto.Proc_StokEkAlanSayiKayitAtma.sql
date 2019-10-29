SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [Gusto].[Proc_StokEkAlanSayiKayitAtma]

( 
	
    @pEkAlanTaninmi tinyint,
	@ldSayi int,
	@sStokKodu varchar(255),
	@pOlusturanKullanici int

)
AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


	if exists (select * from GUSTO00001.StokKodu where sKod=@sStokKodu) begin


		insert into GUSTO00001.stokEkAlanSayi (pEkAlanTanimi,cSahibinTuru,pOwnerID,ldSayi,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		select @pEkAlanTaninmi,'SK',StokKodu_rowid,@ldSayi,@pOlusturanKullanici,CAST(GETDATE() as date),replace(convert(varchar,GETDATE(),108),':','') from GUSTO00001.StokKodu where sKod=@sStokKodu

	end

	else begin

	insert into ##Temp1 (sStokKodu) values (@sStokKodu);

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