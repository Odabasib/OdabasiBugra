SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [GUSTO00001].[StokMuhKoduAktarimT]

	@sStokKodu varchar(60),
	@sMuhasebeKodu5 varchar(60),
	@sMuhasebeKodu1 varchar(60),
	@sMuhasebeKodu2 varchar(60),
	@sMuhasebeKodu8 varchar(60),
	@sMuhasebeKodu3 varchar(60),
	@sMuhasebeKodu4 varchar(60),
	@sMuhasebeKodu43 varchar(60),
	@sMuhasebeKodu7 varchar(60),
	@sMuhasebeKodu9 varchar(60),
	@sMuhasebeKodu11 varchar(60)
AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
	
	DECLARE @pStokKodu int;
	DECLARE @pMuhasebeKodu5 int;
	DECLARE @pMuhasebeKodu1 int;
	DECLARE @pMuhasebeKodu2 int;
	DECLARE @pMuhasebeKodu8 int;
	DECLARE @pMuhasebeKodu3 int;
	DECLARE @pMuhasebeKodu4 int;
	DECLARE @pMuhasebeKodu43 int;
	DECLARE @pMuhasebeKodu7 int;
	DECLARE @pMuhasebeKodu9 int;
	DECLARE @pMuhasebeKodu11 int;
	

	set @pStokKodu = (select StokKodu_rowid from GUSTO00001.StokKodu where sKod = @sStokKodu);

	set @pMuhasebeKodu5 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu5);
	set @pMuhasebeKodu1 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu1);
	set @pMuhasebeKodu2 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu2);
	set @pMuhasebeKodu8 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu8);
	set @pMuhasebeKodu3 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu3);
	set @pMuhasebeKodu4 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu4);
	set @pMuhasebeKodu43 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu43);
	set @pMuhasebeKodu7 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu7);
	set @pMuhasebeKodu9 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu9);
	set @pMuhasebeKodu11 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu11);

	/*Mal Satış KDV */
	declare @MalSatisKDV int;
	set @MalSatisKDV=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu5 and nStokMuhasebeKoduTanimi = 5
	)
	if @MalSatisKDV= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu5,5)
	end


	/*Mal Satış İade KDV */
	declare @MalSatisIadeKDV int;
	set @MalSatisIadeKDV=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu1 and nStokMuhasebeKoduTanimi = 1
	)
	if @MalSatisIadeKDV= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu1,1)


	/*Toptan Satış */
	declare @x int;
	set @x=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu8 and nStokMuhasebeKoduTanimi = 8
	)
	if @x= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu8,8)
	end

	end

	/*Toptan Satış */
	declare @ToptanSatis int;
	set @ToptanSatis=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu8 and nStokMuhasebeKoduTanimi = 8
	)
	if @ToptanSatis= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu8,8)
	end


	/*Teşviksiz Ihracat */
	declare @TesviksizIhr int;
	set @TesviksizIhr=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu3 and nStokMuhasebeKoduTanimi = 3
	)
	if @TesviksizIhr= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu3,3)
	end


	/*Toptan Satis Iade  */
	declare @ToptanSatisIAde int;
	set @ToptanSatisIAde=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu4 and nStokMuhasebeKoduTanimi = 4
	)
	if @ToptanSatisIAde= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu4,4)
	end

	/* Satis Indirimi */
	declare @SatisInd int;
	set @SatisInd=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu43 and nStokMuhasebeKoduTanimi = 43
	)
	if @SatisInd= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu43,43)
	end


		/* Satis Indirimi */
	declare @y int;
	set @y=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu7 and nStokMuhasebeKoduTanimi = 7
	)
	if @y= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu7,7)
	end

		declare @yy int;
	set @yy=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu9 and nStokMuhasebeKoduTanimi = 9
	)
	if @yy= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu9,9)
	end

	declare @yyy int;
	set @yyy=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu11 and nStokMuhasebeKoduTanimi = 11
	)
	if @yyy= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu11,11)
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