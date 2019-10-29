SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE function [GUSTO00001].[SonAlisBilgileri] (@pStokKodu int,@pFatura int)
returns varchar(2000)
as
Begin
	declare @SonAlis_Fatura_Rowid int;
	declare @sSonAlisBilgileri varchar(2000);

			select 
			@SonAlis_Fatura_Rowid=max(Fatura_rowid)
			from GUSTO00001.Fatura f 
			inner join GUSTO00001.StokHareketBaslik shb on f.Fatura_rowid = shb.pFatura
			inner join GUSTO00001.StokHareket sh on shb.StokHareketBaslik_rowid = sh.pHareketBaslik
			inner join GUSTO00001.MusteriSaticiKodu msk on f.pCari = msk.MusteriSaticiKodu_rowid
			inner join GUSTO00001.StokKodu sk on sh.pStokKodu = sk.StokKodu_rowid
			inner join GUSTO00001.StokDetay sd on sk.StokKodu_rowid = sd.pStokKodu
			where f.nFaturaTuru = 1 and sh.cStokHizmetDemirbas = 'S' and f.Fatura_rowid<>@pFatura and sh.pStokKodu = @pStokKodu

		set @sSonAlisBilgileri=
		(
			select 
			top 1
			CONCAT(
			'Tarih : ',cast(f.dtFaturaTarih as date),
			' Fatura Seri/No : ',CONCAT(f.sFaturaSeri,'/',f.lFaturaNo) ,
			' Cari : ',msk.sAd, 
			' Birim Fiyat : ',cast(sh.ldBirimFiyatKDVsiz as decimal(15,2)),
			' Birim Fiyat(USD) : ',cast(sh.ldBirimFiyatKDVsiz/nullif((select d.dEfektifSatis from GUSTO.DovizKuru d where d.pDoviz = 2 and cast(d.dtTarih as date) =cast(f.dtFaturaTarih as date)),0) as decimal(15,2)),
			' Miktar : ', cast(sh.ldMalMiktari1Birim  as decimal(15,2))
			)
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
			@sSonAlisBilgileri			
 
)
End
GO