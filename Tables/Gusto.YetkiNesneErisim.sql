CREATE TABLE [Gusto].[YetkiNesneErisim] (
  [YetkiNesneErisim_rowid] [int] IDENTITY,
  [pYetkiGrubu] [int] NOT NULL DEFAULT (0),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [pYetkiKodlari] [int] NOT NULL DEFAULT (0),
  [pKayit] [int] NOT NULL DEFAULT (0),
  [nDurum] [tinyint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YetkiNesneErisim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pFirma]
  ON [Gusto].[YetkiNesneErisim] ([pFirma])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YetkiErisimKey]
  ON [Gusto].[YetkiNesneErisim] ([pYetkiGrubu], [pFirma], [pYetkiKodlari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YetkiKayitKey]
  ON [Gusto].[YetkiNesneErisim] ([pYetkiGrubu], [pFirma], [pKayit])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YetkiKodGrupKey]
  ON [Gusto].[YetkiNesneErisim] ([pYetkiKodlari], [pYetkiGrubu], [pFirma])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO