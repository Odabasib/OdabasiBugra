﻿SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_HizmetKart] As   Select HizmetKodu_rowid As HizmetKart_rowid, sKod sHizmetKod,  sAd sHizmetAd, sKisaAdi sHizmetKisaAd, pHizmetDetayi, pUstKod,  cIzlemeKodlariVarmi, bIzlemeKoduZorunlu, nChildCount, bPasifMi,  pDoviz, SubeKodu From GUSTO00004.Hizmetkodu 
GO