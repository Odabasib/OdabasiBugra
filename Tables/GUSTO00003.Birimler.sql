CREATE TABLE [GUSTO00003].[Birimler] (
  [Birimler_rowid] [int] IDENTITY,
  [sBirimAdi] [varchar](30) NULL DEFAULT (''),
  [sBirimSembolu] [varchar](10) NULL DEFAULT (''),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Birimler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sBirimAdi]
  ON [GUSTO00003].[Birimler] ([sBirimAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO