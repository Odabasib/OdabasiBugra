CREATE TABLE [GUSTO00004].[SatisPlaniStoklar] (
  [SatisPlaniStoklar_rowid] [int] IDENTITY,
  [pPlanlama] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SatisPlaniStoklar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PlanlamaStoklar]
  ON [GUSTO00004].[SatisPlaniStoklar] ([pPlanlama], [pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO