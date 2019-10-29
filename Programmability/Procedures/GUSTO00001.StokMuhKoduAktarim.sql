SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [GUSTO00001].[StokMuhKoduAktarim]

	@sStokKodu varchar(60),
	@sMuhasebeKodu7 varchar(60),
	@sMuhasebeKodu21 varchar(60),
	@sMuhasebeKodu25 varchar(60),
	@sMuhasebeKodu9 varchar(60),
	@sMuhasebeKodu11 varchar(60)
	

AS

BEGIN TRY
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
	
	DECLARE @pStokKodu int;
	DECLARE @pMuhasebeKodu7 int;
	DECLARE @pMuhasebeKodu21 int;
	DECLARE @pMuhasebeKodu25 int;
	DECLARE @pMuhasebeKodu9 int;
	DECLARE @pMuhasebeKodu11 int;

	set @pStokKodu = (select StokKodu_rowid from GUSTO00001.StokKodu where sKod = @sStokKodu);

	set @pMuhasebeKodu7 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu7);
	set @pMuhasebeKodu21 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu21);
	
	set @pMuhasebeKodu25 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu25);
	set @pMuhasebeKodu9 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu9);
	set @pMuhasebeKodu11 = (select HesapKodu_rowid from GUSTO00001.HesapKodu where sKod = @sMuhasebeKodu11);

	/*Mal Satış KDV */
	declare @MalSatisKDV int;
	set @MalSatisKDV=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu7 and nStokMuhasebeKoduTanimi = 7
	)
	if @MalSatisKDV= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu7,7)
	end


	/*Mal Satış İade KDV */
	declare @MalSatisIadeKDV int;
	set @MalSatisIadeKDV=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu21 and nStokMuhasebeKoduTanimi = 21
	)
	if @MalSatisIadeKDV= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu21,21)
	end


	
	/* Satis Indirimi */
	declare @a int;
	set @a=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu25 and nStokMuhasebeKoduTanimi = 25
	)
	if @a= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu25,25)
	end



	/*Toptan Satis Iade  */
	declare @ToptanSatisIAde int;
	set @ToptanSatisIAde=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu9 and nStokMuhasebeKoduTanimi = 9
	)
	if @ToptanSatisIAde= 0
	begin
		insert into GUSTO00001.StokMuhasebeKodu(cStokHizmet,pStokKodu,pStokMuhasebeKodu,nStokMuhasebeKoduTanimi)
		values('S',@pStokKodu,@pMuhasebeKodu9,9)
	end

	/* Satis Indirimi */
	declare @SatisInd int;
	set @SatisInd=
	(
	select count(*) from Gusto00001.StokMuhasebeKodu  where pStokKodu =@pStokKodu and  pStokMuhasebeKodu=@pMuhasebeKodu11 and nStokMuhasebeKoduTanimi = 11
	)
	if @SatisInd= 0
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