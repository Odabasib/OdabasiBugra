CREATE TABLE [Gusto].[DovizYeri] (
  [DovizYeri_rowid] [int] IDENTITY,
  [Adi] [varchar](30) NULL DEFAULT (''),
  [KisaAdi] [varchar](10) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DovizYeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KisaAdi]
  ON [Gusto].[DovizYeri] ([KisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO