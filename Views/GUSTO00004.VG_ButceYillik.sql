SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_ButceYillik] As   select pbutce, nbutceyili,  sum(ldbutcetutari+ldrevizetutar) ldyillikbutcetutari,  sum (ldbutcetutari) ldbutcetutar,  sum (ldbloketutar) ldyillikbloketutar,  sum (ldrevizetutar) ldrevizetutar  from GUSTO00004.ButceHareket group by pbutce, nbutceyili 
GO