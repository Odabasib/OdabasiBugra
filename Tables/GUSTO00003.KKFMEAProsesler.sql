﻿CREATE TABLE [GUSTO00003].[KKFMEAProsesler] (
  [KKFMEAProsesler_rowid] [int] IDENTITY,
  [pKKFMEABaslik] [int] NOT NULL DEFAULT (0),
  [sProsesTanimi] [varchar](50) NOT NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAProsesler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEABaslik]
  ON [GUSTO00003].[KKFMEAProsesler] ([pKKFMEABaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO