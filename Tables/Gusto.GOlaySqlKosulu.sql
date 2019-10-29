CREATE TABLE [Gusto].[GOlaySqlKosulu] (
  [GOlaySqlKosulu_rowid] [int] IDENTITY,
  [sSqlAdi] [varchar](255) NOT NULL DEFAULT (''),
  [sSql] [text] NOT NULL DEFAULT (''),
  [bSqlResult] [bit] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GOlaySqlKosulu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [sSqlAdi]
  ON [Gusto].[GOlaySqlKosulu] ([sSqlAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO