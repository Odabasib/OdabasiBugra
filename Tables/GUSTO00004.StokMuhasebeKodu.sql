CREATE TABLE [GUSTO00004].[StokMuhasebeKodu] (
  [StokMuhasebeKodu_rowid] [int] IDENTITY,
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pStokMuhasebeKodu] [int] NULL DEFAULT (0),
  [nStokMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MuhKodTanimKey]
  ON [GUSTO00004].[StokMuhasebeKodu] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO