CREATE TABLE [GUSTO00001].[IsyeriYetkilileri] (
  [IsyeriYetkilileri_rowid] [int] IDENTITY,
  [pIsyeriKodu] [int] NOT NULL DEFAULT (0),
  [pYetkiGrubu] [int] NOT NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsyeriYetkilileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IsyeriYetkiDonemKey]
  ON [GUSTO00001].[IsyeriYetkilileri] ([pIsyeriKodu], [pYetkiGrubu], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO