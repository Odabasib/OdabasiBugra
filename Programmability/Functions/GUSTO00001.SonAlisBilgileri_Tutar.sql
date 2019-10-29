SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create function [GUSTO00001].[SonAlisBilgileri_Tutar] (@pStokKodu int,@pFatura int)
returns decimal(15,2)
as
Begin
	declare @SonAlis_Fatura_Rowid int;
	declare @ldSonAlis decimal(15,2)

			select 
			@SonAlis_Fatura_Rowid=max(Fatura_rowid)
			from GUSTO00001.Fatura f 
			inner join GUSTO00001.StokHareketBaslik shb on f.Fatura_rowid = shb.pFatura
			inner join GUSTO00001.StokHareket sh on shb.StokHareketBaslik_rowid = sh.pHareketBaslik
			inner join GUSTO00001.MusteriSaticiKodu msk on f.pCari = msk.MusteriSaticiKodu_rowid
			inner join GUSTO00001.StokKodu sk on sh.pStokKodu = sk.StokKodu_rowid
			inner join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
			where f.nFaturaTuru = 1 and sh.cStokHizmetDemirbas = 'S' and f.Fatura_rowid<>@pFatura and sh.pStokKodu = @pStokKodu

		set @ldSonAlis=
		(
			select 
			top 1

			cast(sh.ldBirimFiyatKDVsiz as decimal(15,2))

			from GUSTO00001.Fatura f 
			inner join GUSTO00001.StokHareketBaslik shb on f.Fatura_rowid = shb.pFatura
			inner join GUSTO00001.StokHareket sh on shb.StokHareketBaslik_rowid = sh.pHareketBaslik
			inner join GUSTO00001.MusteriSaticiKodu msk on f.pCari = msk.MusteriSaticiKodu_rowid
			inner join GUSTO00001.StokKodu sk on sh.pStokKodu = sk.StokKodu_rowid
			inner join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
			where Fatura_rowid = @SonAlis_Fatura_Rowid and sh.pStokKodu = @pStokKodu
		)



return 
(
			@ldSonAlis			
 
)
End
GO