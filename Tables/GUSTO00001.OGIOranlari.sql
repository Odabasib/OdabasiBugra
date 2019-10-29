CREATE TABLE [GUSTO00001].[OGIOranlari] (
  [OGIOranlari_rowid] [int] IDENTITY,
  [pOGITanimi] [int] NULL DEFAULT (0),
  [ldUstSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OGIOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO