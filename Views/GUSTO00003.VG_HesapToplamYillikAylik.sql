SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_HesapToplamYillikAylik] As   select phesapkodu, year(dttarih) yil, month(dttarih) ay,  sum(case bBorcMu when 'B' then ldtutar else 0 end) toplamkullanim   from GUSTO00003.yevmiyehareketi group by	year(dttarih),  month(dttarih), phesapkodu 
GO