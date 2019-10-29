CREATE TABLE [Gusto].[KullaniciYetkiGrubu] (
  [KullaniciYetkiGrubu_rowid] [int] IDENTITY,
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [pYetkiGrubu] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KullaniciYetkiGrubu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [Gusto].[KullaniciYetkiGrubu] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pYetkiGrubu]
  ON [Gusto].[KullaniciYetkiGrubu] ([pYetkiGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO