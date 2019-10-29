﻿CREATE TABLE [GUSTO00001].[OzelIsaret] (
  [OzelIsaret_rowid] [int] IDENTITY,
  [pIsaretTanimi] [int] NULL DEFAULT (0),
  [pIsaretDeger] [int] NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelIsaret_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHareket]
  ON [GUSTO00001].[OzelIsaret] ([pHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsaretDeger]
  ON [GUSTO00001].[OzelIsaret] ([pIsaretDeger])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsaretTanimi]
  ON [GUSTO00001].[OzelIsaret] ([pIsaretTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO