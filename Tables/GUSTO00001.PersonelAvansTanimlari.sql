CREATE TABLE [GUSTO00001].[PersonelAvansTanimlari] (
  [PersonelAvansTanimlari_rowid] [int] IDENTITY,
  [sKod] [varchar](60) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (1),
  [nSira] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelAvansTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00001].[PersonelAvansTanimlari] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKodAdKey]
  ON [GUSTO00001].[PersonelAvansTanimlari] ([sKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO