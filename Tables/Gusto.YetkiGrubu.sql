CREATE TABLE [Gusto].[YetkiGrubu] (
  [YetkiGrubu_rowid] [int] IDENTITY,
  [Adi] [varchar](30) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([YetkiGrubu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO