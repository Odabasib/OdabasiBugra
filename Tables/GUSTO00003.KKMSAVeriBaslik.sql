﻿CREATE TABLE [GUSTO00003].[KKMSAVeriBaslik] (
  [KKMSAVeriBaslik_rowid] [int] IDENTITY,
  [pMSABaslik] [int] NULL DEFAULT (0),
  [pOlcumcu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKMSAVeriBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMSABaslik]
  ON [GUSTO00003].[KKMSAVeriBaslik] ([pMSABaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOlcumcu]
  ON [GUSTO00003].[KKMSAVeriBaslik] ([pOlcumcu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO