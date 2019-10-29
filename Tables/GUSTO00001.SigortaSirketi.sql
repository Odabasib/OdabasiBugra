CREATE TABLE [GUSTO00001].[SigortaSirketi] (
  [SigortaSirketi_rowid] [int] IDENTITY,
  [sKodu] [varchar](20) NULL DEFAULT (''),
  [sAdi] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SigortaSirketi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAdi]
  ON [GUSTO00001].[SigortaSirketi] ([sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKodu]
  ON [GUSTO00001].[SigortaSirketi] ([sKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO