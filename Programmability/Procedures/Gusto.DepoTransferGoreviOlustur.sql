SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[DepoTransferGoreviOlustur] 
	@pIsEmri int,
	@pAtananKullanici int,
	@pAtayanKullanici int,
	@pFaaliyet int
AS 
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;

declare @dtIsemriTarihi date;
declare @pUretilecekStok int;
declare @sIsemriSeriNo varchar(20);
declare @sSiparisSeriNo varchar(30);

select @dtIsemriTarihi=dtIsEmriTarihi,@pUretilecekStok=iu.pStokKodu,@sIsemriSeriNo=CONCAT(i.sIsEmriSeri,' - ',i.nIsEmriNo) from GUSTO00001.IsEmri i
inner join GUSTO00001.IsEmriUrunler iu on iu.pIsemri=i.IsEmri_rowid
where i.IsEmri_rowid=@pIsEmri

insert into Gusto.EPMFaaliyet (PFAALIYETTURU,DTPLANSTART,DTPLANEND,DTSTART,DTEND,KONU,PATAYANKULLANICI,PKULLANICI,DTOLUSTURMA) values
(27,GETDATE(),GETDATE(),GETDATE(),GETDATE(),CONCAT(@sIsemriSeriNo,' Depo Transfer Emri'),@pAtayanKullanici,@pAtananKullanici,GETDATE());
declare @EPMFAALIYET_ROWID int;
set @EPMFAALIYET_ROWID=SCOPE_IDENTITY();

insert into Gusto.BPMFT_DEPOTRANSFERI (PFAALIYET,dtIsemriTarih,pAtayanKullanici,pIsEmri,pUrun) values (@EPMFAALIYET_ROWID,@dtIsemriTarihi,@pAtayanKullanici,@pIsEmri,@pUretilecekStok);


if((select COUNT(*) from GUSTO00001.ASiparisIsEmriBaglanti where pKokIsEmri=@pIsEmri and cTur='A')=1) begin


	select @sSiparisSeriNo=ISNULL(concat(asb.sSeri,' - ',asb.lno),'') from GUSTO00001.ASiparisIsEmriBaglanti a
	inner join GUSTO00001.IsEmri i on i.IsEmri_rowid=a.pKokIsEmri
	inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=a.pBaglayanBelge
	inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
	where cTur='A' and i.IsEmri_rowid=@pIsEmri

update Gusto.BPMFT_DEPOTRANSFERI set sReferansNo=@sSiparisSeriNo where PFAALIYET=@EPMFAALIYET_ROWID;

end

else if((select COUNT(*) from GUSTO00001.ASiparisIsEmriBaglanti where pKokIsEmri=@pIsEmri and cTur='A')=0) begin

update Gusto.BPMFT_DEPOTRANSFERI set sReferansNo='Serbest İş Emri' where PFAALIYET=@EPMFAALIYET_ROWID;

end


--insert into Gusto.EPMGorevReminder(PKULLANICI,PATAYANFAALIYET,SACIKLAMA) values (@pAtananKullanici,@EPMFAALIYET_ROWID,CONCAT(@sIsemriSeriNo,' Depo Transfer Emri'));

if((select COUNT(*) from [IsEmriDepoTransferEmriBaglanti] where pIsEmri=@pIsEmri)=0) begin

insert into Gusto.[IsEmriDepoTransferEmriBaglanti]  (pIsemri,pAtamaYapilanFaaliyet,pDepoTransferFaaliyet) select @pIsEmri,@pFaaliyet,@EPMFAALIYET_ROWID;

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