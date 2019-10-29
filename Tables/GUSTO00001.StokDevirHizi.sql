CREATE TABLE [GUSTO00001].[StokDevirHizi] (
  [StokDevirHizi_rowid] [int] IDENTITY,
  [pDonem] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [nStokDevirHizi] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDevirHizi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [DonemStokIzlemeDepoMaliyet]
  ON [GUSTO00001].[StokDevirHizi] ([pStokKodu], [pDonem], [pIzlemeKodu], [pDepoMaliyetKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO