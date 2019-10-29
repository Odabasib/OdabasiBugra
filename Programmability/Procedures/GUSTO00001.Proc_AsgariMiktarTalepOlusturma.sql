SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_AsgariMiktarTalepOlusturma]
as
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;


declare @pDepoKodu int;
declare @pStoKKodu int;
declare @ldTalepMiktari decimal(22,6);
declare @nOrtalamaTerminSuresi int;
declare @pTalep int;
declare @nTalepNo int;


DECLARE AsgariMiktarAltınaDusenStoklar CURSOR FOR

select aa.pDepoKodu,aa.pStokKodu,(aa.ldBirinciBirimAzami-dsm.ldBirinciBirim) 'Talep Miktarı' from GUSTO00001.DepoStokAzamiAsgari aa
inner join GUSTO00001.DepoStokMiktar dsm on dsm.pStokKodu=aa.pStokKodu and aa.pDepoKodu=dsm.pDepoKodu
where dsm.ldBirinciBirim < aa.ldBirinciBirimAsgari and aa.pStokKodu not in (select pStok from GUSTO00001.Talep where Talep_rowid in  
(select pKaynak from GUSTO00001.AktarmaBaglanti where sKaynakTuru='TS' and sHedefTuru='VS')) and aa.pStokKodu not in (select pStok from GUSTO00001.Talep where cOnayDurumu='O')

union 

select aa.pDepoKodu,aa.pStokKodu,aa.ldBirinciBirimAzami 'Talep Miktarı' from GUSTO00001.DepoStokAzamiAsgari aa
where not exists (select * from GUSTO00001.DepoStokMiktar s where aa.pStokKodu=s.pStokKodu and aa.pDepoKodu=s.pDepoKodu) and
ldBirinciBirimAsgari!=0 and  aa.pStokKodu not in (select pStok from GUSTO00001.Talep where Talep_rowid in  
(select pKaynak from GUSTO00001.AktarmaBaglanti where sKaynakTuru='TS' and sHedefTuru='VS')) and aa.pStokKodu not in (select pStok from GUSTO00001.Talep where cOnayDurumu='O')


OPEN AsgariMiktarAltınaDusenStoklar

FETCH NEXT FROM AsgariMiktarAltınaDusenStoklar INTO @pDepoKodu,@pStoKKodu,@ldTalepMiktari
WHILE @@FETCH_STATUS =0

BEGIN

set @nTalepNo=(select nNo+1 from Gusto00001.Seri where Seri_rowid=122 )

insert into GUSTO00001.Talep (sSeri,lNo,cTur,dtTarih,cOnayDurumu,cKarsilamaDurumu,cStokHizmet,pStok,ldTalepMiktari,cKacinciBirim,ldOnaylananMiktar,
pTeslimDepoKodu,pOlusturanKullanici,dtOlusturma,tmOlusturma,cKurTuru,cTalepDondurulmus)
values ('T',@nTalepNo,'0',cast(GETDATE() as date),'B','0','S',@pStoKKodu,@ldTalepMiktari,'1',@ldTalepMiktari,@pDepoKodu,1,cast(GETDATE() as date),concat(DATEPART(HOUR,GETDATE()),DATEPART(MINUTE,GETDATE()),DATEPART(SECOND,getdate())),'','H');

set @pTalep=SCOPE_IDENTITY();

insert into GUSTO00001.OnayDurumu (cBelgeTipi,pBelge,pOnayTanimi,cOnayDurumu,pOlusturanKullanici,dtOlusturma,tmOlusturma,pDegistirenKullanici,dtDegistirme,tmDegistirme)
values ('1',@pTalep,1,'B',1,cast(GETDATE() as date),concat(DATEPART(HOUR,GETDATE()),DATEPART(MINUTE,GETDATE()),DATEPART(SECOND,getdate())),1,cast(GETDATE() as date),concat(DATEPART(HOUR,GETDATE()),DATEPART(MINUTE,GETDATE()),DATEPART(SECOND,getdate())));

if ((select COUNT(*) from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=14 and pOwnerID=@pStoKKodu)!=0) begin

set @nOrtalamaTerminSuresi=(select ldSayi from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=14 and pOwnerID=@pStoKKodu);

update GUSTO00001.Talep set dtEnGecTeslimTarihi=DATEADD(DAY,@nOrtalamaTerminSuresi,dtTarih) where Talep_rowid=@pTalep;

end

else begin

update GUSTO00001.Talep set dtEnGecTeslimTarihi=DATEADD(DAY,3,dtTarih) where Talep_rowid=@pTalep;

end


update GUSTO00001.Talep set sAciklama='Asgari Miktar Otomatik Talep Oluşturma' where Talep_rowid=@pTalep;

update GUSTO00001.Seri set nNo=nNo+1 where Seri_rowid=122;


FETCH NEXT FROM AsgariMiktarAltınaDusenStoklar INTO @pDepoKodu,@pStoKKodu,@ldTalepMiktari
		
END

CLOSE AsgariMiktarAltınaDusenStoklar

DEALLOCATE AsgariMiktarAltınaDusenStoklar


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