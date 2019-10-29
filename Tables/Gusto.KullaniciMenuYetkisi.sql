CREATE TABLE [Gusto].[KullaniciMenuYetkisi] (
  [KullaniciMenuYetkisi_rowid] [int] IDENTITY,
  [pKullanici] [int] NULL DEFAULT (0),
  [pMenuTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KullaniciMenuYetkisi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [Gusto].[KullaniciMenuYetkisi] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pMenuTanimi]
  ON [Gusto].[KullaniciMenuYetkisi] ([pMenuTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO