CREATE TABLE [GUSTO00004].[OzelGiderIndirimiOdeme] (
  [OzelGiderIndirimiOdeme_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [nAy] [smallint] NULL DEFAULT (0),
  [nYil] [smallint] NULL DEFAULT (0),
  [ldOdemeMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdNetOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdNetOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pIslemID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelGiderIndirimiOdeme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [PersonelYilAyKey]
  ON [GUSTO00004].[OzelGiderIndirimiOdeme] ([pPersonel], [nYil], [nAy])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO