SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_ButceToplam] As  select ButceFormulleri.pButceId, dtTarih, SUM(YevmiyeHareketi.ldTutar) as toplam  from GUSTO00003.ButceFormulleri ButceFormulleri, GUSTO00003.YevmiyeHareketi YevmiyeHareketi  where ButceFormulleri.pMuhasebeKodu =YevmiyeHareketi.pHesapKodu  group by ButceFormulleri.pButceId, YevmiyeHareketi.dtTarih
GO