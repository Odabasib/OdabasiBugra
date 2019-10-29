CREATE TABLE [Gusto].[UzunAdlar] (
  [UzunAdlar_rowid] [int] IDENTITY,
  [nDilKodu] [int] NOT NULL DEFAULT (0),
  [sAnahtar] [varchar](6) NULL DEFAULT (''),
  [sKisaAdi] [varchar](6) NULL DEFAULT (''),
  [sUzunAdi] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([UzunAdlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AnahtarKey]
  ON [Gusto].[UzunAdlar] ([nDilKodu], [sAnahtar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO