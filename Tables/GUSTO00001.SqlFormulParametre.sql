CREATE TABLE [GUSTO00001].[SqlFormulParametre] (
  [SqlFormulParametre_rowid] [int] IDENTITY,
  [pFormul] [int] NULL DEFAULT (0),
  [sParamName] [varchar](40) NULL DEFAULT (''),
  [sParamReferans] [varchar](100) NULL DEFAULT (''),
  [sTypeName] [varchar](50) NULL DEFAULT (''),
  [nType] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SqlFormulParametre_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [FormulName]
  ON [GUSTO00001].[SqlFormulParametre] ([pFormul], [sParamName], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO