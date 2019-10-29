CREATE TABLE [Gusto].[Doviz] (
  [Doviz_rowid] [int] IDENTITY,
  [BayrakIndex] [smallint] NULL DEFAULT (0),
  [Sira] [smallint] NULL DEFAULT (0),
  [Adi] [varchar](20) NULL DEFAULT (''),
  [KisaAdi] [varchar](6) NULL DEFAULT (''),
  [Ulke] [varchar](30) NULL DEFAULT (''),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Doviz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Sira]
  ON [Gusto].[Doviz] ([Sira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO