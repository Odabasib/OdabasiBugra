SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[CariDevirRakamlari]
       
       @sKod varchar(100),
       @ldTutar varchar(100)
      
       
       
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
       
	   set @ldTutar = (select replace(@ldTutar,',','.') )
       DECLARE @MusteriSaticiKodu_rowid int;
	   DECLARE @MusteriSaticiDetayi_rowid int;

       set @MusteriSaticiKodu_rowid = (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu where sKod = @sKod)
	   set @MusteriSaticiDetayi_rowid = (select MusteriSaticiDetayi_Rowid from Gusto00001.MusteriSaticiDetayi where pMusteriSaticiKodu =@MusteriSaticiKodu_rowid)

	   if @MusteriSaticiKodu_rowid>0
       begin

		declare @CariHareket_Rowid int;
		
		insert into GUSTO00001.CariHareket (pCariKodID,dtTarih,nHareketTuru,ldTutar,cBorcAlacak,dtValorTarihi,pOlusturanKullanici,dtOlusturma)
		values(@MusteriSaticiKodu_rowid,'20180101',51,@ldTutar,'B','20180101',1,GETDATE())
		
		SET @CariHareket_Rowid = SCOPE_IDENTITY();
		
		insert into GUSTO00001.AcikHesapIslem (cCariTuru,pCari,dtVadeTarihi,cBorcAlacak,nHareketTuru,pOlusturanHareket,ldTutar,ldKalanTutar,pHareketDoviz,cKapandi,dtIslemTarihi)
		values('C',@MusteriSaticiKodu_rowid,'20180101','B',51,@CariHareket_Rowid,@ldTutar,@ldTutar,0,'H','20180101')

		insert into Gusto00001.OdemePlani (dtTarih,nIslemTuru,ldToplamTutar )
		values ('20180101',11,@ldTutar)

		update Gusto00001.MusteriSaticiDetayi set ldDevredenBorc = @ldTutar , dtBorcDevirVadeTarihi = '20180101' where MusteriSaticiDetayi_rowid = @MusteriSaticiDetayi_rowid
			
		end

else

begin
		insert into Gusto.DevirLog (CariKod) values (@sKod)

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