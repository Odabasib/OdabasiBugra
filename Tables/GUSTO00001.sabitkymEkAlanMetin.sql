﻿CREATE TABLE [GUSTO00001].[sabitkymEkAlanMetin] (
  [sabitkymEkAlanMetin_rowid] [int] IDENTITY,
  [pEkAlanTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [sMetin] [varchar](255) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([sabitkymEkAlanMetin_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EAMetinSahipKey]
  ON [GUSTO00001].[sabitkymEkAlanMetin] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EAMetinTanimDegerKey]
  ON [GUSTO00001].[sabitkymEkAlanMetin] ([pEkAlanTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO