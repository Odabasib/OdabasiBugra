SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00005].[Proc_CariDevri] 
       
       @sStokKodu varchar(100),
       @ldMalMiktari1Birim int,
	   @ldBirimFiyat decimal(22,2)    
       
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;

declare @pStoKKodu int;
declare @StokHareket_Rowid int;
declare @DepoHareket_Rowid int;
declare @nSira int;

declare @dtTarih date;
set @dtTarih='20180101';

set @pStoKKodu=(select StokKodu_rowid from GUSTO00005.StokKodu where sKod=@sStokKodu);

insert into GUSTO00005.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira) 
select @dtTarih,'S',StokKodu_rowid,1 from GUSTO00005.StokKodu where sKod=@sStokKodu;

insert into GUSTO00005.StokHareket (pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,cGirisCikis,nHareketTuru,cKacinciBirim,
ldMalMiktari1Birim,ldBirimFiyatKDVsiz,ldBirimFiyatKDVli,ldToplamFiyatKDVsiz,ldIskontoSonrasiTutar,
ldFAIskontoSonrasiTutar,dtTarih,nSira,pDepo,ldMaliyetFiyatiKDVsiz,cCariTuru,ldsdMaliyetFiyatiKDVsiz,
ldsdBirimFiyatKDVsiz,ldsdBirimFiyatKDVli,ldsdToplamFiyatKDVsiz,ldsdIskontoSonrasiTutar,ldsdFAIskontoSonrasiTutar,
pOlusturanKullanici,dtOlusturma,tmOlusturma,ldEndeks)
values
(168,'AB',8,'S',@pStoKKodu,'0',108,'1',@ldMalMiktari1Birim,cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),
(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),
@dtTarih,(select COUNT(*)+1 from GUSTO00005.StokHareket where pHareketBaslik=168),2,cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),'C',cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),
cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6)),
(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),
(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),
(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim),
1,CAST(GETDATE() as date),164312,1);

set @StokHareket_Rowid=SCOPE_IDENTITY();

set @nSira=(select COUNT(*)+1 from GUSTO00005.StokHareket where pHareketBaslik=168);

insert into GUSTO00005.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid);

delete from GUSTO00005.StokYuruyenMaliyet where ((pStokHareket=@StokHareket_Rowid AND pIzlemeKodu=0) AND pDepoMaliyetKodu=0);

insert into GUSTO00005.StokYuruyenMaliyet (pStokKarti,dtTarih,cGirisCikis,nSira,pStokHareket) values (@pStoKKodu,@dtTarih,'0',1,@StokHareket_Rowid);

insert into GUSTO00005.DepoHareket(pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,pOlusturanKullanici,dtOlusturma,tmOlusturma)
values
(2,@dtTarih,'AB',8,'0',@nSira,108,@pStoKKodu,'1',@ldMalMiktari1Birim,1,CAST(GETDATE() as date),164834);

set @DepoHareket_Rowid=SCOPE_IDENTITY();

update GUSTO00005.StokHareket set pDepoHareket=@DepoHareket_Rowid where StokHareket_rowid=@StokHareket_Rowid;

insert into GUSTO00005.FaturaKDV (cBelgeTuru,pBaslik,ldKDVOncesiTutar) values ('SH',168,(cast(REPLACE(@ldBirimFiyat,',','.') as decimal(22,6))*@ldMalMiktari1Birim));

update GUSTO00005.StokDetay set ldBirinciBirim=ldBirinciBirim+@ldMalMiktari1Birim where pStokKodu=@pStoKKodu;
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