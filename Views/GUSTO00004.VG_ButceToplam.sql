SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_ButceToplam] As  select ButceFormulleri.pButceId, dtTarih, SUM(YevmiyeHareketi.ldTutar) as toplam  from GUSTO00004.ButceFormulleri ButceFormulleri, GUSTO00004.YevmiyeHareketi YevmiyeHareketi  where ButceFormulleri.pMuhasebeKodu =YevmiyeHareketi.pHesapKodu  group by ButceFormulleri.pButceId, YevmiyeHareketi.dtTarih
GO