CREATE TABLE [Gusto].[GSistemOlayKullanici] (
  [GSistemOlayKullanici_rowid] [int] IDENTITY,
  [nEventID] [int] NOT NULL DEFAULT (0),
  [cKullaniciTuru] [char](1) NOT NULL DEFAULT (' '),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GSistemOlayKullanici_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OlayKullanici]
  ON [Gusto].[GSistemOlayKullanici] ([nEventID], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO