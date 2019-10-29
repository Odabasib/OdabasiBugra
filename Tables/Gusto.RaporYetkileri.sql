CREATE TABLE [Gusto].[RaporYetkileri] (
  [RaporYetkileri_rowid] [int] IDENTITY,
  [pRaporKodu] [int] NOT NULL DEFAULT (0),
  [pYetkiGrubu] [int] NOT NULL DEFAULT (0),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [nSablonYetkisi] [tinyint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RaporYetkileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GrupFirmaKey]
  ON [Gusto].[RaporYetkileri] ([pYetkiGrubu], [pFirma])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pFirma]
  ON [Gusto].[RaporYetkileri] ([pFirma])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [RaporFirmaKey]
  ON [Gusto].[RaporYetkileri] ([pRaporKodu], [pFirma], [pYetkiGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO