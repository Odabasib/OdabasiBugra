SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[AcilisFisi]
       
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
	  set @ldSira = (select max(ldSira)+1 from GUSTO00001.YevmiyeHareketi where pYevmiyeFisi= 2341)

	  declare @KodVarmi int;
	  set @KodVarmi = (select count(*) from GUSTO00001.HesapKodu where sKod=@sKod)
	  if(@KodVarmi = 0)
		
	begin
		exec [GUSTO00001].HesapPlaniAktar @sKod,@sAd

		declare @pHesapKoduY int;

		set @pHesapKoduY = (select HesapKodu_Rowid from GUSTO00001.HesapKodu where sKod = @sKod)

		insert into GUSTO00001.YevmiyeHareketi
		(pDonem,sSeri,lFisNo,dtTarih,pYevmiyeFisi,ldSira,pHesapKodu,bBorcMu,ldTutar,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(7,'YVF',1,GETDATE(),2341,@ldSira,@pHesapKoduY,@BorcAlacak,@Tutar,1,GETDATE(),'111111')


		
	end

	else

	begin

		declare @pHesapKodu int;

		set @pHesapKodu = (select HesapKodu_Rowid from GUSTO00001.HesapKodu where sKod = @sKod)
	  
		insert into GUSTO00001.YevmiyeHareketi
		(pDonem,sSeri,lFisNo,dtTarih,pYevmiyeFisi,ldSira,pHesapKodu,bBorcMu,ldTutar,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(7,'YVF',1,GETDATE(),2341,@ldSira,@pHesapKodu,@BorcAlacak,@Tutar,1,GETDATE(),'111111')

	end
	 

	 declare @ldBorcToplam decimal(22,6);
	 declare @ldAlacakToplam decimal(22,6);

	 set @ldBorcToplam = (select sum(ldTutar) from GUSTO00001.YevmiyeHareketi where pYevmiyeFisi = 2341  and bBorcMu = 'B')
	 set @ldAlacakToplam = (select sum(ldTutar) from GUSTO00001.YevmiyeHareketi where pYevmiyeFisi = 2341  and bBorcMu = 'A')

	 update GUSTO00001.YevmiyeFisi set ldBorcToplam = @ldBorcToplam , ldAlacakToplam = @ldAlacakToplam where YevmiyeFisi_rowid = 2341

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