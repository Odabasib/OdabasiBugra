CREATE TABLE [Gusto].[RaporParametreSatiri] (
  [RaporParametreSatiri_rowid] [int] IDENTITY,
  [pRaporSablonu] [int] NOT NULL DEFAULT (0),
  [nParamTuru] [smallint] NOT NULL DEFAULT (0),
  [sParamName] [varchar](50) NULL DEFAULT (''),
  [sParamValueBas] [varchar](255) NULL DEFAULT (''),
  [sParamValueBit] [varchar](255) NULL DEFAULT (''),
  [nParamType] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RaporParametreSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SablonEkran]
  ON [Gusto].[RaporParametreSatiri] ([pRaporSablonu], [nParamTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO