SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE function [GUSTO00001].[KasaKalani] (@nAy int,@nYil int)
returns decimal (22,6)
as
Begin
return 
(

select KasaKalani.[Kasa Kalanı]  from 
		(
				select 
				(isnull(KasaBorc.tutar,0)-isnull(KasaAlacak.tutar,0))-isnull(KrediBorc.tutar,0) + isnull(KrediAlacak.tutar,0) 
				+
				
case when KasaAlacak.ay = 1 then (select sum(case when bBorcMu = 'B' then ldTutar else -ldTutar end) from GUSTO00001.YevmiyeHareketi yh
inner join GUSTO00001.YevmiyeFisi yf on yh.pYevmiyeFisi = yf.YevmiyeFisi_rowid
inner join GUSTO00001.HesapKodu hk on yh.pHesapKodu = hk.HesapKodu_rowid
where hk.sKod like '102%' and YEAR(yf.dtTarih)=2019 and yf.cCinsi ='1'
)
else 
case when KasaAlacak.[ay] = 1 then 0 else [GUSTO00001].[KasaKalani](KasaAlacak.Ay-1 ,2019) end

 end
				
				
				
				 'Kasa Kalanı'

				from 
				(
				select MONTH(dtHareket) ay,sum(ldTutar)  tutar from GUSTO00001.V_BankaKasaHareketleri_Alacak
				where YEAR(dtHareket)=@nYil
				group by MONTH(dtHareket)
				) KasaAlacak 
				left join 
				(

				select MONTH(dtHareket) ay ,sum(ldTutar) tutar from GUSTO00001.V_BankaKasaHareketleri_Borc
				where YEAR(dtHareket)=@nYil
				group by MONTH(dtHareket)
				) KasaBorc on KasaAlacak.ay = KasaBorc.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Borc
				where YEAR(dtTarih) =@nYil
				group by  MONTH(dtTarih)
				) KrediBorc on KasaAlacak.ay = KrediBorc.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Borc
				where YEAR(dtTarih) =@nYil and Tur = 'Banka Krediler,'
				group by  MONTH(dtTarih)
				) KrediBorcDetay1 on KasaAlacak.ay = KrediBorcDetay1.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Borc
				where YEAR(dtTarih) =@nYil and Tur = 'Emtia'
				group by  MONTH(dtTarih)
				) KrediBorcDetay2 on KasaAlacak.ay = KrediBorcDetay2.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Borc
				where YEAR(dtTarih) = @nYil and Tur = 'EximBank'
				group by  MONTH(dtTarih)
				) KrediBorcDetay3 on KasaAlacak.ay = KrediBorcDetay3.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Borc
				where YEAR(dtTarih) = @nYil and Tur = 'Rotatif'
				group by  MONTH(dtTarih)
				) KrediBorcDetay4 on KasaAlacak.ay = KrediBorcDetay4.ay
				left join
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Alacak
				where YEAR(dtTarih) = @nYil
				group by  MONTH(dtTarih)
				) KrediAlacak on KasaAlacak.ay = KrediAlacak.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Alacak
				where YEAR(dtTarih) = @nYil and Tur = 'Banka Krediler,'
				group by  MONTH(dtTarih)
				) KrediAlacakDetay1 on KasaAlacak.ay = KrediAlacakDetay1.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Alacak
				where YEAR(dtTarih) = @nYil and Tur = 'Emtia'
				group by  MONTH(dtTarih)
				) KrediAlacakDetay2 on KasaAlacak.ay = KrediAlacakDetay2.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Alacak
				where YEAR(dtTarih) =@nYil and Tur = 'EximBank'
				group by  MONTH(dtTarih)
				) KrediAlacakDetay3 on KasaAlacak.ay = KrediAlacakDetay3.ay
				left join 
				(
				select month(dtTarih) ay ,sum(ldTutar) tutar from GUSTO00001.V_Kredi_Alacak
				where YEAR(dtTarih) = @nYil and Tur = 'Rotatif'
				group by  MONTH(dtTarih)
				) KrediAlacakDetay4 on KasaAlacak.ay = KrediAlacakDetay4.ay
				where KasaAlacak.ay= @nAy

		) KasaKalani 
)
End
GO