﻿CREATE TABLE [GUSTO00003].[MuhasebeKulTan] (
  [MuhasebeKulTan_rowid] [int] IDENTITY,
  [pKulTanTanim] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bPasif] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MuhasebeKulTan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KulTan_sAdKey]
  ON [GUSTO00003].[MuhasebeKulTan] ([pKulTanTanim], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KulTan_sKodKey]
  ON [GUSTO00003].[MuhasebeKulTan] ([pKulTanTanim], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KulTan_UstKodAdKey]
  ON [GUSTO00003].[MuhasebeKulTan] ([pKulTanTanim], [pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KulTan_UstKodKodKey]
  ON [GUSTO00003].[MuhasebeKulTan] ([pKulTanTanim], [pUstKod], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO