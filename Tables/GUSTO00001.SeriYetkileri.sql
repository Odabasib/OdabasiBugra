CREATE TABLE [GUSTO00001].[SeriYetkileri] (
  [SeriYetkileri_rowid] [int] IDENTITY,
  [pSeri] [int] NULL DEFAULT (0),
  [pYetkiGrubu] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SeriYetkileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO