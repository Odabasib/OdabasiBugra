﻿CREATE TABLE [GUSTO00005].[OzelIsaretDegerleri] (
  [OzelIsaretDegerleri_rowid] [int] IDENTITY,
  [pIsaretTanimi] [int] NULL DEFAULT (0),
  [sDeger] [varchar](80) NULL DEFAULT (''),
  [cKisaDeger] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelIsaretDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OzelIsaretTanimDegerKey]
  ON [GUSTO00005].[OzelIsaretDegerleri] ([pIsaretTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO