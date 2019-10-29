﻿CREATE TABLE [GUSTO00001].[OperasyonKodu] (
  [OperasyonKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [bDenetlemeNoktasiMi] [bit] NULL DEFAULT (0),
  [bSonsuzKapasiteKaynagiMi] [bit] NULL DEFAULT (0),
  [bGanttSuresiUzarMi] [bit] NULL DEFAULT (0),
  [pOperasyonDetay] [int] NOT NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOperasyonDetay]
  ON [GUSTO00001].[OperasyonKodu] ([pOperasyonDetay])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00001].[OperasyonKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00001].[OperasyonKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00001].[OperasyonKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00001].[OperasyonKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO