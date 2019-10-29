SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00003].[AcilisFisiAktar]
       
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

	  declare @KodVarmi int;
	  set @KodVarmi = (select count(*) from GUSTO00003.HesapKodu where sKod=@sKod)
	  if(@KodVarmi = 0)
		
	begin
		exec [GUSTO00003].HesapPlaniAktar @sKod,@sAd

		declare @pHesapKoduY int;

		set @pHesapKoduY = (select HesapKodu_Rowid from GUSTO00003.HesapKodu where sKod = @sKod)

		insert into GUSTO00003.YevmiyeHareketi
		(pDonem,sSeri,lFisNo,dtTarih,pYevmiyeFisi,ldSira,pHesapKodu,bBorcMu,ldTutar,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(8,'YF',1,'20180101',1,@ldSira,@pHesapKoduY,@BorcAlacak,@Tutar,1,'20180101','111111')


		
	end

	else

	begin

		declare @pHesapKodu int;

		set @pHesapKodu = (select HesapKodu_Rowid from GUSTO00003.HesapKodu where sKod = @sKod)
	  
		insert into GUSTO00003.YevmiyeHareketi
		(pDonem,sSeri,lFisNo,dtTarih,pYevmiyeFisi,ldSira,pHesapKodu,bBorcMu,ldTutar,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(8,'YF',1,'20180101',1,@ldSira,@pHesapKodu,@BorcAlacak,@Tutar,1,'20180101','111111')

	end
	 

	 declare @ldBorcToplam decimal(22,6);
	 declare @ldAlacakToplam decimal(22,6);

	 set @ldBorcToplam = (select sum(ldTutar) from GUSTO00003.YevmiyeHareketi where pYevmiyeFisi = 1  and bBorcMu = 'B')
	 set @ldAlacakToplam = (select sum(ldTutar) from GUSTO00003.YevmiyeHareketi where pYevmiyeFisi = 1 and bBorcMu = 'A')

	 update GUSTO00003.YevmiyeFisi set ldBorcToplam = @ldBorcToplam , ldAlacakToplam = @ldAlacakToplam where YevmiyeFisi_rowid =1

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