CREATE TABLE [GUSTO00004].[GelirVergisiOranlari] (
  [GelirVergisiOranlari_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NULL,
  [ldUstSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelirVergisiOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [GelirVergisiBasTarKey]
  ON [GUSTO00004].[GelirVergisiOranlari] ([dtBasTar], [ldUstSinir], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO