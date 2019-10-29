CREATE TABLE [Gusto].[UlkeBilgi] (
  [UlkeBilgi_rowid] [int] IDENTITY,
  [sUlkeAdi] [varchar](50) NULL DEFAULT (''),
  [sAlanKodu] [varchar](10) NULL DEFAULT (''),
  [nBayrakIndex] [smallint] NULL DEFAULT (0),
  [sParaUzunAdi] [varchar](20) NULL DEFAULT (''),
  [sParaKisaAdi] [varchar](6) NULL DEFAULT (''),
  [sVergiKodu] [varchar](20) NULL DEFAULT (''),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([UlkeBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sUlkeAdi]
  ON [Gusto].[UlkeBilgi] ([sUlkeAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO