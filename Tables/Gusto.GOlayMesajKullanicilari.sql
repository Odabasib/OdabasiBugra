CREATE TABLE [Gusto].[GOlayMesajKullanicilari] (
  [GOlayMesajKullanicilari_rowid] [int] IDENTITY,
  [pOlayTanimi] [int] NOT NULL DEFAULT (0),
  [cKullaniciTuru] [char](1) NOT NULL DEFAULT (' '),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [pMesaj] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GOlayMesajKullanicilari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OlayKullanici]
  ON [Gusto].[GOlayMesajKullanicilari] ([pOlayTanimi], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO