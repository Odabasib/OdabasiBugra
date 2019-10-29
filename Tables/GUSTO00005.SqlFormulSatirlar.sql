CREATE TABLE [GUSTO00005].[SqlFormulSatirlar] (
  [SqlFormulSatirlar_rowid] [int] IDENTITY,
  [pFormul] [int] NULL DEFAULT (0),
  [nGrupSirasi] [smallint] NULL DEFAULT (0),
  [nSatirSirasi] [smallint] NULL DEFAULT (0),
  [nSatirTuru] [smallint] NULL DEFAULT (0),
  [sSQL] [varchar](255) NULL DEFAULT (''),
  [sExpression] [text] NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SqlFormulSatirlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FormulName]
  ON [GUSTO00005].[SqlFormulSatirlar] ([pFormul], [nGrupSirasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO