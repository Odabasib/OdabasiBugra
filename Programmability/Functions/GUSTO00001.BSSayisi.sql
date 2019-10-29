SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create function [GUSTO00001].[BSSayisi] (@pCari int,@dtTarih date)
returns int
as
Begin
return 
(

select adet.sayi  from 
		(
				Select msd.MusteriSaticiKodu_rowid,
				count(f.Fatura_Rowid) sayi,
				sum(case when f.nFaturaTuru in (2,4) then ldKdvOncesiTutar else 0 end) BA
								from
				[GUSTO00001].CariHareket ch
				inner join [GUSTO00001].Fatura f on ch.pIslemID = f.pIslemID
				inner join [GUSTO00001].MusteriSaticiKodu msd on ch.pCariKodID =msd.MusteriSaticiKodu_rowid
				where  DATEADD(MONTH,DATEDIFF(MONTH,0,@dtTarih),0) <= (CH.dtTarih) and (ch.dtTarih)<= @dtTarih and f.nFaturaTuru in (2,4) and msd.MusteriSaticiKodu_rowid=@pCari
				group by msd.MusteriSaticiKodu_rowid having 
				(sum(case when f.nFaturaTuru in (2,4) then ldKdvOncesiTutar else 0 end) > 5000)
		) adet 
)
End
GO