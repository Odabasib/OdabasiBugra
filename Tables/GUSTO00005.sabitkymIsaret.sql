﻿CREATE TABLE [GUSTO00005].[sabitkymIsaret] (
  [sabitkymIsaret_rowid] [int] IDENTITY,
  [pIsaretTanimi] [int] NULL DEFAULT (0),
  [pIsaretDegeri] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([sabitkymIsaret_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IsaretKey]
  ON [GUSTO00005].[sabitkymIsaret] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsaretDegeri]
  ON [GUSTO00005].[sabitkymIsaret] ([pIsaretDegeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO