CREATE TABLE [GUSTO00003].[FAKesintiSablonSatiri] (
  [FAKesintiSablonSatiri_rowid] [int] IDENTITY,
  [pSablon] [int] NOT NULL DEFAULT (0),
  [fSira] [real] NOT NULL DEFAULT (0.000000),
  [pDigerCari] [int] NOT NULL DEFAULT (0),
  [pDekontSerisi] [int] NOT NULL DEFAULT (0),
  [fYuzde] [real] NOT NULL DEFAULT (0.000000),
  [sSatirAciklama] [varchar](60) NULL DEFAULT (''),
  [pFinHarDetayTanimi] [int] NOT NULL DEFAULT (0),
  [sSQLKosulu] [varchar](251) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FAKesintiSablonSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonSatirKey]
  ON [GUSTO00003].[FAKesintiSablonSatiri] ([pSablon], [fSira], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO