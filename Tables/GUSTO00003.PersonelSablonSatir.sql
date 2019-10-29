CREATE TABLE [GUSTO00003].[PersonelSablonSatir] (
  [PersonelSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NOT NULL DEFAULT (0),
  [nTur] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonTurKey]
  ON [GUSTO00003].[PersonelSablonSatir] ([pSablon], [nTur], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO