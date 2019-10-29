SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00004].[StokMuhKoduAktarimT]

	
	@sMuhasebeKodu5 varchar(60),
	@sMuhasebeKodu1 varchar(60),
	@sMuhasebeKodu7 varchar(60),
	@sMuhasebeKodu2 varchar(60),
	@sMuhasebeKodu11 varchar(60),
	@sMuhasebeKodu9 varchar(60),
	@sMuhasebeKodu21 varchar(60),
	@sMuhasebeKodu25 varchar(60),
	@sMuhasebeKodu24 varchar(60),

	@sStokKodu varchar(60)

	
	--@sMuhasebeKodu9 varchar(60),
	--@sMuhasebeKodu11 varchar(60)
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
	
	DECLARE @pStokKodu int;
	DECLARE @pMuhasebeKodu5 int;
	DECLARE @pMuhasebeKodu1 int;
	DECLARE @pMuhasebeKodu7 int;
	DECLARE @pMuhasebeKodu2 int;
	DECLARE @pMuhasebeKodu11 int;	
	DECLARE @pMuhasebeKodu9 int;
	DECLARE @pMuhasebeKodu21 int;
	DECLARE @pMuhasebeKodu25 int;
	DECLARE @pMuhasebeKodu24 int;
	
	

	set @pStokKodu = (select StokKodu_rowid from GUSTO00004.StokKodu where sKod = @sStokKodu);

	set @pMuhasebeKodu5 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu5);
	set @pMuhasebeKodu1 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu1);
	set @pMuhasebeKodu7 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu7);
	set @pMuhasebeKodu2 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu2);
	set @pMuhasebeKodu11 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu11);
	set @pMuhasebeKodu9 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu9);
	set @pMuhasebeKodu21 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu21);
	set @pMuhasebeKodu25 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu25);
	set @pMuhasebeKodu24 = (select HesapKodu_rowid from GUSTO00004.HesapKodu where sKod = @sMuhasebeKodu25);
	


	
	declare @MalSatisKDV int;
	set @MalSatisKDV=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu5 and nStokMuhasebeKoduTanimi = 5
	)
	if @MalSatisKDV= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu5,5)
	end


	
	declare @MalSatisIadeKDV int;
	set @MalSatisIadeKDV=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu1 and nStokMuhasebeKoduTanimi = 1
	)
	if @MalSatisIadeKDV= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu1,1)


	/*Toptan Satış */
	declare @x int;
	set @x=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu7 and nStokMuhasebeKoduTanimi = 7
	)
	if @x= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu7,7)
	end

	end

	/*Toptan Satış */
	declare @ToptanSatis int;
	set @ToptanSatis=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu2 and nStokMuhasebeKoduTanimi = 2
	)
	if @ToptanSatis= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu2,2)
	end


	/*Teşviksiz Ihracat */
	declare @TesviksizIhr int;
	set @TesviksizIhr=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu11 and nStokMuhasebeKoduTanimi = 11
	)
	if @TesviksizIhr= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu11,11)
	end


	/*Toptan Satis Iade  */
	declare @ToptanSatisIAde int;
	set @ToptanSatisIAde=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu9 and nStokMuhasebeKoduTanimi = 9
	)
	if @ToptanSatisIAde= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu9,9)
	end

	/* Satis Indirimi */
	declare @SatisInd int;
	set @SatisInd=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu21 and nStokMuhasebeKoduTanimi = 21
	)
	if @SatisInd= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu21,21)
	end


		/* Satis Indirimi */
	declare @y int;
	set @y=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu25 and nStokMuhasebeKoduTanimi = 25
	)
	if @y= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu25,25)
	end

		declare @yy int;
	set @yy=
	(
	select count(*) from GUSTO00004.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu24 and nStokMuhasebeKoduTanimi = 24
	)
	if @yy= 0
	begin
		insert into GUSTO00004.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu24,24)
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