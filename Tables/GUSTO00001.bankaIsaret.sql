﻿CREATE TABLE [GUSTO00001].[bankaIsaret] (
  [bankaIsaret_rowid] [int] IDENTITY,
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
  PRIMARY KEY CLUSTERED ([bankaIsaret_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IsaretKey]
  ON [GUSTO00001].[bankaIsaret] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsaretDegeri]
  ON [GUSTO00001].[bankaIsaret] ([pIsaretDegeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO