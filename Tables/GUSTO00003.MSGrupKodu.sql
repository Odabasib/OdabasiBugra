﻿CREATE TABLE [GUSTO00003].[MSGrupKodu] (
  [MSGrupKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pMSGrupDetayi] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSGrupKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MSGUstKodAdKey]
  ON [GUSTO00003].[MSGrupKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MSGUstKodKodKey]
  ON [GUSTO00003].[MSGrupKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00003].[MSGrupKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00003].[MSGrupKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO