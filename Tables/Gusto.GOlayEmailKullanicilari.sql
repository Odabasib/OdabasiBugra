CREATE TABLE [Gusto].[GOlayEmailKullanicilari] (
  [GOlayEmailKullanicilari_rowid] [int] IDENTITY,
  [pOlayTanimi] [int] NOT NULL DEFAULT (0),
  [cKullaniciTuru] [char](1) NOT NULL DEFAULT (' '),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [sEmail] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GOlayEmailKullanicilari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OlayKullanici]
  ON [Gusto].[GOlayEmailKullanicilari] ([pOlayTanimi], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO