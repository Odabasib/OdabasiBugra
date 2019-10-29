SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [Gusto].[SQLCalistir] 
	@Hedef varchar(10),
	@Sembol varchar(10),
	@Deger varchar(10),
	@PR_ID int output
AS 

BEGIN TRY


		declare @vcSQL  nvarchar(max);
		declare @sayi int;
		set @vcSQL=	(select CONCAT('select @sayi = case when',' ',convert(nvarchar, @Hedef),' ',convert(nvarchar, @Sembol),' ',convert(nvarchar, @Deger),' ','then',' ','1',' ','else',' ','0',' ','end' ))
		exec sp_executesql @vcSQL,
		N'@sayi int output',
		@sayi output;
		select @sayi;
 	
	

	SET @PR_ID = @sayi;
END TRY
BEGIN CATCH

END CATCH
GO