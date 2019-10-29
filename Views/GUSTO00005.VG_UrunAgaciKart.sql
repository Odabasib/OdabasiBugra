SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_UrunAgaciKart] As   Select UrunAgaclari_rowid As UrunAgaciKart_rowid, sKod sUAKod,  sAd sUAAd, pUstKod, nChildCount, nMontajProses, dtGecerlilikBaslama,  dtGecerlilikBitis, sRotaOncelikKodu, cDurum, SubeKodu  From GUSTO00005.UrunAgaclari 
GO