CREATE TABLE [GUSTO00004].[MSDigerIskonto] (
  [MSDigerIskonto_rowid] [int] IDENTITY,
  [pMSDigerKodu] [int] NULL DEFAULT (0),
  [pIskontoTanim] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSDigerIskonto_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO