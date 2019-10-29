SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_ButceAylik] As   Select pbutce, nbutceyili,nButceayi,  sum(ldbutcetutari+ldrevizetutar) ldyillikbutcetutari,  sum (ldbutcetutari) ldbutcetutar,  sum (ldbloketutar) ldyillikbloketutar,  sum (ldrevizetutar) ldrevizetutar  from	GUSTO00001.ButceHareket  group by 	pbutce,nbutceyili, nButceayi 
GO