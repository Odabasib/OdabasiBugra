SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[ReklamasyonNumuneOnay] 
@dtTarih date,
@pOnayTalepEdenKullanici int,
@pOnayaGidecekKullanici int,
@pFirma int,
@PKartID int,
@PGorusmeTuru int
as
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @EPMFAALIYET_ROWID int;

INSERT INTO [Gusto].[EPMFaaliyet]
([PFAALIYETTURU],[BPLANLAMA],[DTPLANSTART],[DTPLANEND],[DTSTART],[DTEND],[KONU],[STIMERVALUE],[DURUM],[BTEKRARLANABILIR],[PATAYAN],
[PKULLANICI],[DTOLUSTURMA],[DTDEGISTIRME],[PMUSTERI],[PATAYANKULLANICI],[POLUSTURAN],[PDEGISTIREN],[SUBEKODU],[PFIRMA])
(select 21,0,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'Reklamasyon,Numune Çıkış Onayı','000:00',0,0,@pOnayTalepEdenKullanici,
@pOnayaGidecekKullanici,GETDATE(),GETDATE(),@PKartID,
@pOnayaGidecekKullanici,@pOnayaGidecekKullanici,0,NULL,@pFirma);

set @EPMFAALIYET_ROWID=SCOPE_IDENTITY();

insert into Gusto.BPMFT_RNONAY (pFAALIYET,dtTarih,PCRMGorusmeTuru,pKullanici) (select @EPMFAALIYET_ROWID,@dtTarih,@PGorusmeTuru,@pOnayTalepEdenKullanici);

insert into Gusto.EPMGorevReminder(PKULLANICI,PATAYANFAALIYET,PFAALIYET,DTREMIND,SACIKLAMA) 
(select @pOnayaGidecekKullanici,@EPMFAALIYET_ROWID,@PKartID,GETDATE(),concat((select SADI from Gusto.EPMKart where EPMKART_ROWID=@PKartID),' - ','Onay Bildirimi'));

if((select count(*) from [Gusto].[RNOnay] where [KartID]=@PKartID)=1) begin

update Gusto.RNOnay set pDurum=1 where KartID=@PKartID;

end

else begin

insert into  [Gusto].[RNOnay] ([KartID],pDurum,pBelge_Rowid,sBelgeSeri) (select @PKartID,1,0,'');

end


COMMIT TRANSACTION
END TRY
BEGIN CATCH

DECLARE 
@ErrorMessage NVARCHAR(4000),
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