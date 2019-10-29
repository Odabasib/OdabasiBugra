SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [GUSTO00001].[Func_YEtkili]  (	@MusteriSaticiKodu_rowid int)
RETURNS varchar(100)
AS
BEGIN
 declare @YetkiliAdi Varchar(100);
 set @YetkiliAdi =(
 select top 1 sMSYetkiliAdi from GUSTO00001.MusteriSAticiKodu msk 
 inner join
 (
 select  pMusteriSaticiKodu,sMSYetkiliAdi from GUSTO00001.MSYetkiliKisiler
 ) yetkili on yetkili.pMusteriSaticiKodu = msk.MusteriSaticiKodu_rowid
 where msk.MusteriSaticiKodu_rowid = @MusteriSaticiKodu_rowid
 )

 return(@YetkiliAdi)
END
GO