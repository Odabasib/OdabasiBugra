﻿CREATE TABLE [GUSTO00003].[alsatEkAlanSayi] (
  [alsatEkAlanSayi_rowid] [int] IDENTITY,
  [pEkAlanTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [ldSayi] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([alsatEkAlanSayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EASayiSahipKey]
  ON [GUSTO00003].[alsatEkAlanSayi] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EASayiTanimDegerKey]
  ON [GUSTO00003].[alsatEkAlanSayi] ([pEkAlanTanimi], [ldSayi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO