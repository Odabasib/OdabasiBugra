CREATE TABLE [GUSTO00003].[MSIskonto] (
  [MSIskonto_rowid] [int] IDENTITY,
  [pMusteriSaticiKodu] [int] NULL DEFAULT (0),
  [pIskontoTanim] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSIskonto_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO