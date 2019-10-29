CREATE TABLE [GUSTO00004].[GKKHareketSablon] (
  [GKKHareketSablon_rowid] [int] IDENTITY,
  [cGKKIslemTipi] [smallint] NOT NULL DEFAULT (0),
  [cStokHareketTipi] [smallint] NULL DEFAULT (0),
  [pHedefDepo] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GKKHareketSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [cGKKIslemTipi]
  ON [GUSTO00004].[GKKHareketSablon] ([cGKKIslemTipi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cStokHareketTipi]
  ON [GUSTO00004].[GKKHareketSablon] ([cStokHareketTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO