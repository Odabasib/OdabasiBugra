CREATE TABLE [GUSTO00005].[TesvikOranlari] (
  [TesvikOranlari_rowid] [int] IDENTITY,
  [ldYilAltSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldYilUstSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TesvikOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TesvikOranlariYilAltSinirUstSinirKey]
  ON [GUSTO00005].[TesvikOranlari] ([ldYilAltSinir], [ldYilUstSinir], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO