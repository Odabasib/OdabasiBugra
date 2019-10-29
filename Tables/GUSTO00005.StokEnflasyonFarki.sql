CREATE TABLE [GUSTO00005].[StokEnflasyonFarki] (
  [StokEnflasyonFarki_rowid] [int] IDENTITY,
  [pDonem] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [ldEnflasyonFarki] [decimal](22, 2) NULL DEFAULT (0),
  [pStokMaliyet] [int] NULL DEFAULT (0),
  [pStokYuruyenMaliyet] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokEnflasyonFarki_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00005].[StokEnflasyonFarki] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [StokIzDepoMlytKodu]
  ON [GUSTO00005].[StokEnflasyonFarki] ([pDonem], [pStokKodu], [pIzlemeKodu], [pDepoMaliyetKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO