CREATE TABLE [GUSTO00003].[TalepIsEmriBaglanti] (
  [TalepIsEmriBaglanti_rowid] [int] IDENTITY,
  [pIsEmriMalzemeler] [int] NULL DEFAULT (0),
  [pTalep] [int] NULL DEFAULT (0),
  [pIsEmri] [int] NULL DEFAULT (0),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TalepIsEmriBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsEmri]
  ON [GUSTO00003].[TalepIsEmriBaglanti] ([pIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriMalzemeler]
  ON [GUSTO00003].[TalepIsEmriBaglanti] ([pIsEmriMalzemeler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTalep]
  ON [GUSTO00003].[TalepIsEmriBaglanti] ([pTalep])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO