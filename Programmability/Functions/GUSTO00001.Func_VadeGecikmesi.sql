SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE function [GUSTO00001].[Func_VadeGecikmesi] (@pCari int)
returns int
as
Begin
return 
(

	select max(datediff(day,borc.dtVadeTarihi+90,alacak.dtIslemTarihi)) from GUSTO00001.AcikHesapBaglanti ah
	inner join
	(select * from GUSTO00001.AcikHesapIslem where  cBorcAlacak = 'B' and cKapandi = 'E' and pCari = @pCari and nHareketTuru <> 71  ) borc on ah.pBorcHareketi = borc.AcikHesapIslem_rowid
	left join 
	(select * from GUSTO00001.AcikHesapIslem where cBorcAlacak = 'A' and pCari = @pCari and nHareketTuru <> 71   ) alacak on ah.pAlacakHareketi = alacak.AcikHesapIslem_rowid

)
End
GO