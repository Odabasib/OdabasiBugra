CREATE TABLE [GUSTO00001].[StokDepoMaliyetMuhKodu] (
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
  ON [GUSTO00001].[StokDepoMaliyetMuhKodu] ([pStokKodu], [pDepoMaliyetKodu], [nStokMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO