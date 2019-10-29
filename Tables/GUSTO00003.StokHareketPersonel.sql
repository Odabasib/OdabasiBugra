CREATE TABLE [GUSTO00003].[StokHareketPersonel] (
  [StokHareketPersonel_rowid] [int] IDENTITY,
  [pStokHareket] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHareketPersonel_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pPersonel]
  ON [GUSTO00003].[StokHareketPersonel] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareket]
  ON [GUSTO00003].[StokHareketPersonel] ([pStokHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO