SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00004].[HesapPlaniAktar]
       
	 @sKod varchar(200),
     @sAd varchar(200)
      
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
      


	  declare @pUstKod int;
	  set @pUstKod = (select isnull(HesapKodu_Rowid,0) from GUSTO00004.HesapKodu where skod=SUBSTRING(@sKod,1,6))

	  declare @HesapKodu_Rowid int;
	  
	  insert into GUSTO00004.HesapKodu(sKod,sAd,pOlusturanKullanici,pUstKod) values (@sKod,@sAd,1,@pUstKod)
	  
	  SET @HesapKodu_Rowid = SCOPE_IDENTITY();

	  declare @HesapDetayi_Rowid int;
	  
	  insert into GUSTO00004.HesapDetayi (pHesapKodu,cBakiyeSekli,cCalismaSekli,cCalismaEngeli,cDovizTuruAlacak,cDovizTuruBorc,bParasal,nEntegrasyonKaydi)
	  values(@HesapKodu_Rowid,'3','3','3','1','1',1,2)
	  
	  SET @HesapDetayi_Rowid = SCOPE_IDENTITY();

	  update GUSTO00004.HesapKodu set pHesapDetayi = @HesapDetayi_Rowid where HesapKodu_rowid = @HesapKodu_Rowid
	  insert into GUSTO00004.HesapToplam (pHesapKodu,pDonem) values (@HesapKodu_Rowid,10)

	  	
	  update GUSTO00004.HesapKodu set nChildCount =
	  isnull(((select COUNT(*) from GUSTO00004.HesapKodu S where S.pUstKod = GUSTO00004.HesapKodu.HesapKodu_rowid)),0)

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