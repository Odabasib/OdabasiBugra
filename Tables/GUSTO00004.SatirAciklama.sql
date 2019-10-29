CREATE TABLE [GUSTO00004].[SatirAciklama] (
  [SatirAciklama_rowid] [int] IDENTITY,
  [sSatirAciklama] [varchar](255) NULL DEFAULT (''),
  [nModul] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SatirAciklama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SatirAciklamaKey]
  ON [GUSTO00004].[SatirAciklama] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sSatirAciklama]
  ON [GUSTO00004].[SatirAciklama] ([sSatirAciklama])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO