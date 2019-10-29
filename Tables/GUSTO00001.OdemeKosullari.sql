CREATE TABLE [GUSTO00001].[OdemeKosullari] (
  [OdemeKosullari_rowid] [int] IDENTITY,
  [sAdi] [varchar](60) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT ('O'),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](2048) NULL DEFAULT (''),
  [cGunAyHafta] [char](1) NULL DEFAULT (' '),
  [nGunler] [int] NULL DEFAULT (0),
  [cTatilHaftaAyAtlama] [tinyint] NULL DEFAULT (0),
  [nKusuratTaksitNumarasi] [smallint] NULL DEFAULT (0),
  [nYuvarlamaHassasiyeti] [smallint] NULL DEFAULT (0),
  [cAsagiYukariBucuklu] [char](1) NULL DEFAULT (' '),
  [cKDVAyriDahil] [char](1) NULL DEFAULT (' '),
  [nKDVSure] [smallint] NULL DEFAULT (0),
  [cKDVGunAy] [char](1) NULL DEFAULT (' '),
  [cKDVGunAyHafta] [char](1) NULL DEFAULT (' '),
  [nKDVGunler] [int] NULL DEFAULT (0),
  [cKDVTatilHaftaAyAtlama] [tinyint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nVadeSureHesapTipi] [tinyint] NULL DEFAULT (1),
  [nVadeSureYuvTipi] [tinyint] NULL DEFAULT (3),
  [nOdemeTarihiKaynakHedef] [int] NULL DEFAULT (-1),
  [pCalismaTakvimi] [int] NULL DEFAULT (0),
  [pKDVCalismaTakvimi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OdemeKosullari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdiTuru]
  ON [GUSTO00001].[OdemeKosullari] ([sAdi], [cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAdi]
  ON [GUSTO00001].[OdemeKosullari] ([sAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO