CREATE TABLE [GUSTO00001].[StokDinamikOzellikler] (
  [StokDinamikOzellikler_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pDinamikKod] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDinamikOzellikler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [StokDinamik]
  ON [GUSTO00001].[StokDinamikOzellikler] ([pStokKodu], [pDinamikKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO