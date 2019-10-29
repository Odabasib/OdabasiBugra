﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [GUSTO00001].[CariDevirRakamlariYDA]
       
       @sKod varchar(100),
       @ldTutar varchar(100),
	   @Doviz varchar(10),
	   @ldTutarDoviz varchar(100)
      
	 
       
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
       
	   set @ldTutar = (select replace(@ldTutar,',','.') )
	   set @ldTutarDoviz =(select replace(@ldTutarDoviz,',','.') )

       DECLARE @MusteriSaticiKodu_rowid int;
	   DECLARE @MusteriSaticiDetayi_rowid int;
	   declare @pHareketDoviz int;
	   set @pHareketDoviz = (select Doviz_Rowid from Gusto.Doviz where KisaAdi =@Doviz)
       set @MusteriSaticiKodu_rowid = (select MusteriSaticiKodu_rowid from GUSTO00001.MusteriSaticiKodu where sKod = @sKod)
	   set @MusteriSaticiDetayi_rowid = (select MusteriSaticiDetayi_Rowid from Gusto00001.MusteriSaticiDetayi where pMusteriSaticiKodu =@MusteriSaticiKodu_rowid)

	   if @MusteriSaticiKodu_rowid>0
       begin

		declare @CariHareket_Rowid int;
		
		insert into GUSTO00001.CariHareket (pCariKodID,dtTarih,nHareketTuru,ldTutar,cBorcAlacak,dtValorTarihi,pOlusturanKullanici,dtOlusturma,ldHareketDovizTutar)
		values(@MusteriSaticiKodu_rowid,'20180101',51,@ldTutar,'A','20180101',1,GETDATE(),@ldTutarDoviz)
		
		SET @CariHareket_Rowid = SCOPE_IDENTITY();
		
		insert into GUSTO00001.AcikHesapIslem (cCariTuru,pCari,dtVadeTarihi,cBorcAlacak,nHareketTuru,pOlusturanHareket,ldTutar,ldKalanTutar,pHareketDoviz,cKapandi,dtIslemTarihi,ldHareketDovizTutar,ldKalanHareketDovizTutar)
		values('C',@MusteriSaticiKodu_rowid,'20180101','A',51,@CariHareket_Rowid,@ldTutar,@ldTutar,@pHareketDoviz,'H','20180101',@ldTutarDoviz,@ldTutarDoviz)

		insert into Gusto00001.OdemePlani (dtTarih,nIslemTuru,ldToplamTutar)
		values ('20180101',11,@ldTutar)

		update Gusto00001.MusteriSaticiDetayi set ldDevredenAlacak = @ldTutar , dtAlacakDevirVadeTarihi = '20180101' ,ldDevredenDovizAlacak=@ldTutarDoviz where MusteriSaticiDetayi_rowid = @MusteriSaticiDetayi_rowid
			
		end

else

begin
		insert into Gusto.DevirLogYD (Carikod,ldTutar,ldTutarDoviz,cBorcAlacak) values (@sKod,@ldTutar,@ldTutarDoviz,'A')

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