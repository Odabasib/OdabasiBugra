CREATE TABLE [GUSTO00005].[IsMerkeziDagitim] (
  [IsMerkeziDagitim_rowid] [int] IDENTITY,
  [pVerenIsMerkezi] [int] NOT NULL DEFAULT (0),
  [nYil] [smallint] NOT NULL DEFAULT (0),
  [nAy] [smallint] NOT NULL DEFAULT (0),
  [pAlanIsMerkezi] [int] NOT NULL DEFAULT (0),
  [bOranlarOtomatik] [bit] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsMerkeziDagitim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAlanIsMerkezi]
  ON [GUSTO00005].[IsMerkeziDagitim] ([pAlanIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [VerenIsMerkeziYilAy]
  ON [GUSTO00005].[IsMerkeziDagitim] ([pVerenIsMerkezi], [nYil], [nAy], [pAlanIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO