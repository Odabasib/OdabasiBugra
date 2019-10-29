SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [GUSTO00003].[AcilisFisi]
       
	 @sKod varchar(200),
     @sAd varchar(200),
	 @ldTutar varchar(200),
	 @BorcAlacak varchar(3)
      
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
      
	  declare @Tutar decimal(22,6);
	  set @Tutar = (select REPLACE(@ldTutar,',','.'))

	  declare @ldSira int ;
	  set @ldSira = (select max(ldSira)+1 from GUSTO00003.YevmiyeHareketi where pYevmiyeFisi= 1)

	  

		declare @pHesapKodu int;

		set @pHesapKodu = (select HesapKodu_Rowid from GUSTO00003.HesapKodu where sKod = @sKod)
	  
		insert into GUSTO00003.YevmiyeHareketi
		(pDonem,sSeri,lFisNo,dtTarih,pYevmiyeFisi,ldSira,pHesapKodu,bBorcMu,ldTutar,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(8,'YF',1,GETDATE(),1,@ldSira,@pHesapKodu,@BorcAlacak,@Tutar,1,GETDATE(),'111111')

	

	 declare @ldBorcToplam decimal(22,6);
	 declare @ldAlacakToplam decimal(22,6);

	 set @ldBorcToplam = (select sum(ldTutar) from GUSTO00003.YevmiyeHareketi where pYevmiyeFisi = 1  and bBorcMu = 'B')
	 set @ldAlacakToplam = (select sum(ldTutar) from GUSTO00003.YevmiyeHareketi where pYevmiyeFisi =1  and bBorcMu = 'A')

	 update GUSTO00003.YevmiyeFisi set ldBorcToplam = @ldBorcToplam , ldAlacakToplam = @ldAlacakToplam where YevmiyeFisi_rowid = 1

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