SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_SiparisTeklifKayitlarıKontrol] 

AS
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @pTeklifSatir_Rowid int;
declare @pTalepSatir_Rowid int;


DECLARE TeklifBilgileri CURSOR FOR

select ROWID,pTalepId from  Gusto.BPMCG_TeklifSatirlari where ldOnaylananMiktar>0 
and not exists (select * from Gusto.BPMCG_SIPARISSATIRLARI where pTeklifSatirRowid=Gusto.BPMCG_TeklifSatirlari.ROWID) and pUstYonetimOnay=19

OPEN TeklifBilgileri
FETCH NEXT FROM TeklifBilgileri INTO @pTeklifSatir_Rowid,@pTalepSatir_Rowid
WHILE @@FETCH_STATUS =0

BEGIN

	update Gusto.BPMCG_TeklifSatirlari set ldOnaylananMiktar=0,ldKalanMiktar=ldMiktar where ROWID=@pTeklifSatir_Rowid;

	update Gusto.BPMCG_SATINALMATALEPSATIRLARI set pSatirDurum=1209,sIslemAciklama='' where ROWID=@pTalepSatir_Rowid;

FETCH NEXT FROM TeklifBilgileri INTO @pTeklifSatir_Rowid,@pTalepSatir_Rowid
		
END

CLOSE TeklifBilgileri

DEALLOCATE TeklifBilgileri

		
COMMIT TRANSACTION
END TRY
BEGIN CATCH
DECLARE 
@ErrorMessage NVARCHAR(4000),
@ErrorSeverity INT,
@ErrorState INT,
@ErrorLine int;
SELECT 
@ErrorLine=ERROR_LINE(),
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