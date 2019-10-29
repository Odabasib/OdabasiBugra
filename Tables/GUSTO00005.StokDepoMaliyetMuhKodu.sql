CREATE TABLE [GUSTO00005].[StokDepoMaliyetMuhKodu] (
  [StokDepoMaliyetMuhKodu_rowid] [int] IDENTITY,
  [cStokHizmet] [char](1) NOT NULL DEFAULT (' '),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NOT NULL DEFAULT (0),
  [pStokMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nStokMuhasebeKoduTanimi] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDepoMaliyetMuhKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokHizmetDepoTurKey]
  ON [GUSTO00005].[StokDepoMaliyetMuhKodu] ([pStokKodu], [pDepoMaliyetKodu], [nStokMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO