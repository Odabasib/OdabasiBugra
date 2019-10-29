SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE function [GUSTO00001].[SonAlisBul] (@pStokKodu int,@dtTarih date)
returns decimal(22,6)
as
Begin
	--declare @StokHareket_Rowid int;
	
	declare @ldSonAlis decimal(22,6);
	set @ldSonAlis = (select avg(ldBirimFiyatKDVsiz) from GUSTO00001.StokHareket where cGirisCikis = 0 and dtTarih<=@dtTarih and pStokKodu =@pStokKodu )
return 
(
			@ldSonAlis			
 
)
End
GO