SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00005].[SayimFarkiGuncel]
  @Calistir varchar (1)
	
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;


if (@Calistir='1')
begin
	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	declare @pStokKodu int;
	declare @pDepoKodu int;
	declare @pDepomaliyetKodu int;
	declare @ldDepodakiMiktar decimal(22,6);
	declare @ldHareketMiktar decimal(22,6);
	declare @Tur varchar(10); 
	declare @ldSuankiMiktar decimal(22,6)
	SET @dtOlusturma = (select CONVERT(smalldatetime,CONVERT(varchar(10),GETDATE(),104)));
	SET @tmOlusturma = (select REPLACE(RIGHT(CONVERT(varchar,GETDATE(),20),8),':',''));

	set @ldSuankiMiktar = 0
	declare  Sayim CURSOR FOR
	select
	pStokKodu,
	pDepoKodu,
	ldBirinciBirim,
	case when ldBirinciBirim>0 then ldBirinciBirim else -ldBirinciBirim end,
	case when ldBirinciBirim>0 then 'SFC' else 'SFG' end 'Tur',
	1
	from [GUSTO00005].[T_DepoStokMiktarSayim] 

	open Sayim
	fetch next from sayim into @pStokKodu,@pDepoKodu,@ldDepodakiMiktar,@ldHareketMiktar,@Tur,@pDepomaliyetKodu
	
	while @@FETCH_STATUS = 0

	begin

		DECLARE @sSeri varchar(5);
		DECLARE @nNo int;
		DECLARE @nHareketTuru int;
		DECLARE @cGirisCikis varchar(1);
		DECLARE @StokhareketBaslik_Rowid int;
		declare @StokHareket_Rowid int;
		declare @pDepoHareket int;

		if (@Tur='SFG')
		begin
			select 
			@StokhareketBaslik_Rowid=StokHareketBaslik_rowid,
			@nHareketTuru = nHareketTuru,
			@cGirisCikis = '0',
			@sSeri = sSeri,
			@nNo = lNo
			from Gusto00005.StokHareketBaslik where sSeri = 'SFG' and lNo = 3
		end
		else
			begin
			select 
			@StokhareketBaslik_Rowid=StokHareketBaslik_rowid,
			@nHareketTuru = nHareketTuru,
			@cGirisCikis = '1',
			@sSeri = sSeri,
			@nNo = lNo
			 from Gusto00005.StokHareketBaslik where sSeri = 'SFC' and lNo = 2
		end

		INSERT  into Gusto00005.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira)
		values (GETDATE(),'S',@pStokKodu,1)

		INSERT into Gusto00005.StokHareket (pHareketBaslik,sSeri,lNo,cStokHizmetDemirbas,pStokKodu,pDepoMaliyetKodu,cGirisCikis,nHareketTuru,cKacinciBirim,
		ldMalMiktari1Birim,dtTarih,nSira,pDepo,cCariTuru,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@StokhareketBaslik_Rowid,@sSeri,@nNo,'S',@pStokKodu,@pDepomaliyetKodu,@cGirisCikis,@nHareketTuru,'1',
		@ldHareketMiktar,GETDATE(),1,@pDepoKodu,'C',1,@dtOlusturma,@tmOlusturma)
		set @StokHareket_Rowid = SCOPE_IDENTITY()

		INSERT into Gusto00005.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid)


		INSERT Gusto00005.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,pOlusturanKullanici,dtOlusturma,tmOlusturma)
		values
		(@pDepoKodu,GETDATE(),@sSeri,@nNo,@cGirisCikis,1,@nHareketTuru,@pStokKodu,'1',@ldHareketMiktar,1,@dtOlusturma,@tmOlusturma)
		set @pDepoHareket =SCOPE_IDENTITY()

		UPDATE Gusto00005.DepoStokMiktar set ldBirinciBirim=@ldSuankiMiktar where pDepoKodu = @pDepoKodu and @pStokKodu = pStokKodu

		UPDATE Gusto00005.StokHareket 
		set pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,cGirisCikis=@cGirisCikis,
		nHareketTuru=@nHareketTuru,cKacinciBirim='1',
		ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=getdate(),nSira=1,pDepo=@pDepoKodu,cCariTuru='C',cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokhareketBaslik_Rowid


		UPDATE Gusto00005.StokHareket set 
		pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,
		cGirisCikis=@cGirisCikis,nHareketTuru=@nHareketTuru,cKacinciBirim='1',ldMalMiktari1Birim=@ldHareketMiktar,dtTarih=GETDATE(),
		nSira=1,pDepo=@pDepoKodu,cCariTuru='C',cKurTuru=NULL,
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL
		where StokHareket_rowid = @StokHareket_Rowid

		INSERT Gusto00005.FaturaKDV (cBelgeTuru,pBaslik) values ('SH',@StokhareketBaslik_Rowid)
		UPDATE Gusto00005.StokDetay 
		set ldBirinciBirim=@ldSuankiMiktar where pStokKodu = @pStokKodu

	fetch next from sayim into @pStokKodu,@pDepoKodu,@ldDepodakiMiktar,@ldHareketMiktar,@Tur,@pDepomaliyetKodu
	
	end

	close sayim

	deallocate sayim

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