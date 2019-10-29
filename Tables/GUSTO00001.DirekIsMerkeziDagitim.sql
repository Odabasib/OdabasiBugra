CREATE TABLE [GUSTO00001].[DirekIsMerkeziDagitim] (
  [DirekIsMerkeziDagitim_rowid] [int] IDENTITY,
  [pVerenIsMerkezi] [int] NOT NULL DEFAULT (0),
  [nYil] [smallint] NOT NULL DEFAULT (0),
  [nAy] [smallint] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DirekIsMerkeziDagitim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00001].[DirekIsMerkeziDagitim] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [VerenIsMerkeziYilAy]
  ON [GUSTO00001].[DirekIsMerkeziDagitim] ([pVerenIsMerkezi], [nYil], [nAy], [pStokKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO