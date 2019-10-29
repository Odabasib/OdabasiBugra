CREATE TABLE [GUSTO00001].[SiparisOngorusuStoklar] (
  [SiparisOngorusuStoklar_rowid] [int] IDENTITY,
  [pOngoru] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisOngorusuStoklar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OngoruStoklar]
  ON [GUSTO00001].[SiparisOngorusuStoklar] ([pOngoru], [pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO