SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_ButceToplam] As  select ButceFormulleri.pButceId, dtTarih, SUM(YevmiyeHareketi.ldTutar) as toplam  from GUSTO00005.ButceFormulleri ButceFormulleri, GUSTO00005.YevmiyeHareketi YevmiyeHareketi  where ButceFormulleri.pMuhasebeKodu =YevmiyeHareketi.pHesapKodu  group by ButceFormulleri.pButceId, YevmiyeHareketi.dtTarih
GO