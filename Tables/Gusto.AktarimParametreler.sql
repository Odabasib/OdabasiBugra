CREATE TABLE [Gusto].[AktarimParametreler] (
  [AktarimParametreler_rowid] [int] IDENTITY,
  [pAktarim] [int] NOT NULL DEFAULT (0),
  [pModul] [int] NOT NULL DEFAULT (0),
  [nParametreID] [int] NOT NULL DEFAULT (0),
  [nParametreTur] [int] NOT NULL DEFAULT (0),
  [bValue] [bit] NOT NULL DEFAULT (0),
  [sValue] [varchar](50) NULL DEFAULT (''),
  [dtValue] [smalldatetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([AktarimParametreler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO