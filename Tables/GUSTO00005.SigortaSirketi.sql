CREATE TABLE [GUSTO00005].[SigortaSirketi] (
  [SigortaSirketi_rowid] [int] IDENTITY,
  [sKodu] [varchar](20) NULL DEFAULT (''),
  [sAdi] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SigortaSirketi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAdi]
  ON [GUSTO00005].[SigortaSirketi] ([sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKodu]
  ON [GUSTO00005].[SigortaSirketi] ([sKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO