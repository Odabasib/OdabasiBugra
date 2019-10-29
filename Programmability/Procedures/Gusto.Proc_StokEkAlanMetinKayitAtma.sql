SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [Gusto].[Proc_StokEkAlanMetinKayitAtma]

( 
	
    @pEkAlanTaninmi tinyint,
	@sMetin varchar(255),
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


		insert into GUSTO00001.stokEkAlanMetin(pEkAlanTanimi,cSahibinTuru,pOwnerID,sMetin,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		select @pEkAlanTaninmi,'SK',StokKodu_rowid,@sMetin,@pOlusturanKullanici,CAST(GETDATE() as date),replace(convert(varchar,GETDATE(),108),':','') from GUSTO00001.StokKodu where sKod=@sStokKodu

	end

	else begin

		if exists (select * from tempdb.sys.objects where name='##Temp1') begin

			insert into ##Temp1 (sStokKodu) values (@sStokKodu);

		end

		else begin

		create table ##Temp1
		(
			sStokKodu varchar(255)
		)

		insert into ##Temp1 (sStokKodu) values (@sStokKodu);

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