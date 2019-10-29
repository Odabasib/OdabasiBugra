﻿CREATE TABLE [GUSTO00005].[uretimEkAlanMetin] (
  [uretimEkAlanMetin_rowid] [int] IDENTITY,
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
  PRIMARY KEY CLUSTERED ([uretimEkAlanMetin_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EAMetinSahipKey]
  ON [GUSTO00005].[uretimEkAlanMetin] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EAMetinTanimDegerKey]
  ON [GUSTO00005].[uretimEkAlanMetin] ([pEkAlanTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO