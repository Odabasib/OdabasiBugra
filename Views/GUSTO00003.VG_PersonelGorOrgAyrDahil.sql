﻿SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE View [GUSTO00003].[VG_PersonelGorOrgAyrDahil] As SELECT K.PersonelKodu_rowid AS PersId, K.sKod AS PersKod, K.sAd AS PersAd, G.sGorevTanimKodu AS GorevKod, G.sGorevTanimAdi AS GorevAd,  O.sKod AS OrgKod, O.sAd AS OrgAd, K.pPersonelDetayi, K.sSoyad AS PersSoyad, Sendikalar.sSendikaKodu AS SendkKod,  Sendikalar.sSendikaAdi AS SendkAd, PersonelSendika.dtGiris AS dtSenGiris,  PersonelSendika.dtAyrilis AS dtSenCikis, G.bDirektIndirekt, G.pUnvanGrubu FROM GUSTO00003.GorevTanimlari G RIGHT OUTER JOIN GUSTO00003.OrganizasyonKadro KD ON G.GorevTanimlari_rowid=KD.pGorevTanimi LEFT OUTER JOIN GUSTO00003.Organizasyon O ON KD.pOrganizasyon=O.Organizasyon_rowid RIGHT OUTER JOIN GUSTO00003.VG_PersSonGorevYeri INNER JOIN GUSTO00003.PersonelKodu K ON VG_PersSonGorevYeri.pPersonel=K.PersonelKodu_rowid INNER JOIN GUSTO00003.PersonelGorevYerleri GY ON VG_PersSonGorevYeri.pPersonel=GY.pPersonel AND  VG_PersSonGorevYeri.GoreveBaslayisTarihi=GY.dtGoreveBaslayis LEFT OUTER JOIN GUSTO00003.Sendikalar RIGHT OUTER JOIN GUSTO00003.PersonelSendika ON Sendikalar.Sendikalar_rowid=PersonelSendika.pSendika ON  K.PersonelKodu_rowid=PersonelSendika.pPersonel ON KD.OrganizasyonKadro_rowid=GY.pKadro
GO