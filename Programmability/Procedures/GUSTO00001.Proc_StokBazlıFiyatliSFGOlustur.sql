SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[Proc_StokBazlıFiyatliSFGOlustur]

	@StokHareketBaslik int,
	@pDepoKodu int,
	@sStokkodu varchar(100),
	@ldBirinciBirim decimal(22,6),
	@ldBirimFiyat decimal(22,6)

AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;


	DECLARE @dtOlusturma smalldatetime;
	DECLARE @tmOlusturma varchar(10);
	declare @pStokKodu int;
	declare @pDepomaliyetKodu int;
	declare @ldIkinciBirim decimal(22,6);
	declare @ldUcuncuBirim decimal(22,6);
	--declare @Tur varchar(10); 

	SET @dtOlusturma = (select cast(GETDATE()-4 as date));
	SET @tmOlusturma = (select REPLACE(CONVERT(varchar(10),GETDATE()-4,108),':',''));

	declare @nEngellerUyarSerbest tinyint;

	--0 Engelle
	--1 Uyar
	--2 Serbest

	if @pDepoKodu=1 begin --Ana Depo Eksiye Kapalı

		set @nEngellerUyarSerbest=0;

	end

	else if @pDepoKodu=3 begin --Mamül Depo Eksiye Kapalı

		set @nEngellerUyarSerbest=0;

	end

	else begin

		set @nEngellerUyarSerbest=2;

	end



	DECLARE @sSeri varchar(5);
	DECLARE @nNo int;
	DECLARE @nHareketTuru int;
	DECLARE @cGirisCikis varchar(1);
	DECLARE @StokhareketBaslik_Rowid int;
	declare @StokHareket_Rowid int;
	declare @pDepoHareket int;
	declare @pStokYuruyenMaliyet int;
	declare @pStokYuruyenMaliyetDepo int;
	declare @sAciklama varchar(255);
	declare @ldIkinciBirimKatsayi decimal(22,6);
	declare @ldUcuncuBirimKatsayi decimal(22,6);
	declare @bIkinciBirimCarpanBolen char(1);
	declare @bUcuncuBirimCarpanBolen char(1);
	declare @ldDovizKuru decimal(22,6);

	set @ldDovizKuru=5.8624;  --20.06.2019 Tarihinde Bu Kaydı Stok Bazlı Attığımız için Dolar'ın bu tarihteki Satış Kuru.

	select 

	@pStokKodu=s.StokKodu_rowid,
	@ldIkinciBirimKatsayi=isnull(sd.ldIkinciBirimKatsayisi,0),
	@ldUcuncuBirimKatsayi=isnull(sd.ldUcuncuBirimKatsayisi,0),
	@bIkinciBirimCarpanBolen=isnull(sd.cIkinciBirimCarpanBolen,''),
	@bUcuncuBirimCarpanBolen=isnull(sd.cUcuncuBirimCarpanBolen,'') 

	from GUSTO00001.StokKodu s 
	inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
	where sKod=@sStokkodu;


	if @ldIkinciBirimKatsayi >0 begin

		if @bIkinciBirimCarpanBolen='B' begin

			set @ldIkinciBirim=cast(round(@ldBirinciBirim*@ldIkinciBirimKatsayi,6) as decimal(22,6));

		end

		else if @bIkinciBirimCarpanBolen='C' begin

			set @ldIkinciBirim=cast(round(@ldBirinciBirim/@ldIkinciBirimKatsayi,6) as decimal(22,6));

		end
		
	end

	else if @ldIkinciBirimKatsayi=0 begin

		set @ldIkinciBirim=0;

	end



	if @ldUcuncuBirimKatsayi >0 begin


		if @bUcuncuBirimCarpanBolen='B' begin

			set @ldUcuncuBirim=cast(round(@ldBirinciBirim*@ldUcuncuBirimKatsayi,6) as decimal(22,6));

		end

		else if @bUcuncuBirimCarpanBolen='C' begin

			set @ldUcuncuBirim=cast(round(@ldBirinciBirim/@ldUcuncuBirimKatsayi,6) as decimal(22,6));

		end
		

	end

	else if @ldUcuncuBirimKatsayi=0 begin

		set @ldUcuncuBirim=0;

	end

		--select * from GUSTO00001.StokHareketBaslik where sSeri='SFG' and lNo=64
		--(select * 
		--from GUSTO00001.StokHareketBaslik where sSeri='SFG' and lNo=19);

		(select @StokhareketBaslik_Rowid=StokHareketBaslik_rowid,@sSeri=sSeri,@nNo=lNo,@nHareketTuru=nHareketTuru,@sAciklama=sAciklama
		from GUSTO00001.StokHareketBaslik where StokHareketBaslik_rowid=@StokHareketBaslik);

		set @pDepomaliyetKodu=(select pDepoMaliyetKodu from GUSTO00001.DepoKodu where DepoKodu_rowid=@pDepoKodu);


		--INSERT  into Gusto00001.StokHareketSira (dtTarih,cStokHizmetDemirbas,pStokKodu,nMaxSira)
		--values (cast(GETDATE()-4 as date),'S',@pStokKodu,1)

		INSERT into Gusto00001.StokHareket (
		pHareketBaslik,
		sSeri,
		lNo,
		cStokHizmetDemirbas,
		pStokKodu,
		pDepoMaliyetKodu,
		cGirisCikis,
		nHareketTuru,
		cKacinciBirim,
		ldMalMiktari1Birim,
		ldMalMiktari2Birim,
		ldMalMiktari3Birim,
		ldBirimFiyatKDVsiz,
		ldBirimFiyatKDVli,
		ldToplamFiyatKDVsiz,ldIskontoSonrasiTutar,ldFAIskontoSonrasiTutar,dtTarih,nSira,pDepo,
		ldMaliyetFiyatiKDVsiz,cCariTuru,ldhrkdMaliyetFiyatiKDVsiz,ldhrkdBirimFiyatKDVsiz,ldhrkdBirimFiyatKDVli,ldhrkdToplamFiyatKDVsiz,ldhrkdIskontoSonrasiTutar,
		ldhrkFAIskontoSonrasiTutar,pDoviz,pDovizYeri,cKurTuru,pOlusturanKullanici,dtOlusturma,tmOlusturma,ldSetMiktari,ldEndeks)
		values
		(@StokhareketBaslik_Rowid,
		@sSeri,
		@nNo,
		'S',
		@pStokKodu,
		@pDepomaliyetKodu,
		'0',
		@nHareketTuru,
		'1',
		@ldBirinciBirim,
		@ldIkinciBirim,
		@ldUcuncuBirim,
		cast(round((@ldDovizKuru*@ldBirimFiyat),6) as decimal(22,6)),--ldBirimFiyatKDVsiz
		cast(round((@ldDovizKuru*@ldBirimFiyat),6) as decimal(22,6)),--ldBirimFiyatKDVli
		cast(round((@ldDovizKuru*@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,6)),--ldToplamFiyatKDVsiz
		cast(round((@ldDovizKuru*@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,6)),--ldIskontoSonrasiTutar
		cast(round((@ldDovizKuru*@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,6)),--ldFAIskontoSonrasiTutar
		cast(GETDATE()-4 as date) --DtTarih
		,(select COUNT(*)+1 from GUSTO00001.StokHareket where pHareketBaslik=@StokHareketBaslik) --nSira	
		,@pDepoKodu, --pDepoKodu
		cast(round((@ldDovizKuru*@ldBirimFiyat),6) as decimal(22,6)),--ldMaliyetFiyatiKDVsiz 		
		'C',--cCariTuru	
		@ldBirimFiyat,--ldhrkdMaliyetFiyatiKDVsiz
		@ldBirimFiyat,--ldhrkdBirimFiyatKDVsiz
		@ldBirimFiyat,--ldhrkdBirimFiyatKDVli
		cast(round((@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,2)),-- ldhrkdToplamFiyatKDVsiz
		cast(round((@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,2)),-- ldhrkdIskontoSonrasiTutar
		cast(round((@ldBirimFiyat*@ldBirinciBirim),6) as decimal(22,2)),-- ldhrkFAIskontoSonrasiTutar
		2,--pDoviz
		1,--pDovizYeri
		'2',--cKurTuru
		1, --pOlusturanKullanici,
		@dtOlusturma,@tmOlusturma,@ldDovizKuru,1);

		set @StokHareket_Rowid = SCOPE_IDENTITY()

		INSERT into Gusto00001.StokHareketDetay (pStokHareket) values (@StokHareket_Rowid)

		INSERT Gusto00001.DepoHareket (pDepo,dtTarih,sSeri,lNo,cGirisCikis,nSira,nHareketTuru,pStokKodu,cKacinciBirim,ldMiktar1,ldMiktar2,ldMiktar3,pOlusturanKullanici,dtOlusturma,tmOlusturma,sAciklama)
		values
		(@pDepoKodu,cast(GETDATE()-4 as date),@sSeri,@nNo,'0',1,@nHareketTuru,@pStokKodu,'1',@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim,1,@dtOlusturma,@tmOlusturma,@sAciklama)
		set @pDepoHareket =SCOPE_IDENTITY()

		UPDATE Gusto00001.StokHareket 
		set pHareketBaslik=@StokhareketBaslik_Rowid,sSeri=@sSeri,lNo=@nNo,cStokHizmetDemirbas='S',pStokKodu=@pStokKodu,pDepoMaliyetKodu=@pDepomaliyetKodu,cGirisCikis='0',
		nHareketTuru=@nHareketTuru,cKacinciBirim='1'
		,pDepo=@pDepoKodu,cCariTuru='C',--pYuruyenMaliyet=@pStokYuruyenMaliyet,
		--pDepoMlytKoduYuruyenMaliyet=@pStokYuruyenMaliyetDepo,	
		pOlusturanKullanici=1,dtOlusturma=@dtOlusturma,tmOlusturma=@tmOlusturma,pDepoHareket=@pDepoHareket,cBaglanti=NULL,sAciklama=@sAciklama
		where StokHareket_rowid = @StokHareket_Rowid;

		if exists (select * from GUSTO00001.DepoStokMiktar where pStokKodu=@pStokKodu and pDepoKodu=@pDepoKodu) begin

		update GUSTO00001.DepoStokMiktar set ldBirinciBirim=ldBirinciBirim+@ldBirinciBirim,
		ldIkinciBirim=ldIkinciBirim+@ldIkinciBirim,ldUcuncuBirim=ldUcuncuBirim+@ldUcuncuBirim
		where pDepoKodu=@pDepoKodu and pStokKodu=@pStokKodu;

		end

		else begin

			insert into GUSTO00001.DepoStokMiktar (pDepoKodu,pStokKodu,ldBirinciBirim,ldIkinciBirim,ldUcuncuBirim,nEngelleUyarSerbest)
			values
			(@pDepoKodu,@pStokKodu,@ldBirinciBirim,@ldIkinciBirim,@ldUcuncuBirim,@nEngellerUyarSerbest);

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