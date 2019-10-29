CREATE TABLE [GUSTO00005].[Harcirah] (
  [Harcirah_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NULL,
  [ldUstSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldMuafiyetTutari] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Harcirah_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [HarcirahBasTarKey]
  ON [GUSTO00005].[Harcirah] ([dtBasTar], [ldUstSinir], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO