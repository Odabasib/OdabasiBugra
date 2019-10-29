CREATE TABLE [GUSTO00004].[GelirGiderSablonSatiri] (
  [GelirGiderSablonSatiri_rowid] [int] IDENTITY,
  [pGGSablon] [int] NULL DEFAULT (0),
  [fSira] [real] NULL DEFAULT (0.000000),
  [pGGYeriKodu] [int] NULL DEFAULT (0),
  [pGGTuruKodu] [int] NULL DEFAULT (0),
  [fYuzde] [real] NULL DEFAULT (0.000000),
  [sSatirAciklama] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GelirGiderSablonSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonSatirKey]
  ON [GUSTO00004].[GelirGiderSablonSatiri] ([pGGSablon], [fSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO