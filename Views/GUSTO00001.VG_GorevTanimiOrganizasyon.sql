﻿SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_GorevTanimiOrganizasyon] As   SELECT K.PersonelKodu_rowid AS PersId, K.sKod AS PersKod,   K.sAd AS PersAd, G.sGorevTanimKodu AS GorevKod,   G.sGorevTanimAdi AS GorevAd, O.sKod AS OrgKod,   O.sAd AS OrgAd, K.pPersonelDetayi, K.sSoyad AS PersSoyad FROM GUSTO00001.GorevTanimlari G RIGHT OUTER JOIN GUSTO00001.OrganizasyonKadro KD ON   G.GorevTanimlari_rowid = KD.pGorevTanimi LEFT OUTER JOIN  GUSTO00001.Organizasyon O ON KD.pOrganizasyon = O.Organizasyon_rowid   RIGHT OUTER JOIN GUSTO00001.PersonelGorevYerleri GY ON   KD.OrganizasyonKadro_rowid = GY.pKadro left outer join PersonelKodu K ON   K.PersonelKodu_rowid = GY.pPersonel where GY.dtGorevdenayrilis is null 
GO