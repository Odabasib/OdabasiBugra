﻿CREATE TABLE [GUSTO00003].[faturaIsaret] (
  [faturaIsaret_rowid] [int] IDENTITY,
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
  PRIMARY KEY CLUSTERED ([faturaIsaret_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IsaretKey]
  ON [GUSTO00003].[faturaIsaret] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsaretDegeri]
  ON [GUSTO00003].[faturaIsaret] ([pIsaretDegeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO