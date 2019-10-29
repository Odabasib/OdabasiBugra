CREATE TABLE [GUSTO00004].[PersonelKidemIhbar] (
  [PersonelKidemIhbar_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [dtAyrilma] [smalldatetime] NULL,
  [nCalismaYili] [tinyint] NULL DEFAULT (0),
  [nCalismaAyi] [tinyint] NULL DEFAULT (0),
  [nCalismaGunu] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldAylikUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldYillikToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutGunlukGelir] [decimal](22, 6) NULL DEFAULT (0),
  [ldBrutGunlukTazminat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBrutYillikTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutYil] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutAy] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutGun] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [nIhbarHaftasi] [smallint] NULL DEFAULT (0),
  [ldIhbarBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldIhbarGelirVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIhbarDamgaVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIhbarNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldYillikEkGelir] [decimal](22, 2) NULL DEFAULT (0),
  [ldYillikAyniGelir] [decimal](22, 2) NULL DEFAULT (0),
  [ldYillikIndirimler] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemId] [int] NOT NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [ldhdBrutToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIhbarBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIhbarNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdBrutToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIhbarBrutTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIhbarNetToplam] [decimal](22, 2) NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [lSeriNo] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelKidemIhbar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIslemId]
  ON [GUSTO00004].[PersonelKidemIhbar] ([pIslemId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonel]
  ON [GUSTO00004].[PersonelKidemIhbar] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00004].[PersonelKidemIhbar] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO