﻿CREATE TABLE [GUSTO00005].[KulTanTanimi] (
  [KulTanTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [sAd] [varchar](30) NULL DEFAULT (''),
  [nSira] [tinyint] NULL DEFAULT (0),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [sVarsayilan] [varchar](30) NULL DEFAULT (''),
  [nMaxSeviye] [int] NULL DEFAULT (0),
  [nSerbest] [int] NULL DEFAULT (0),
  [Maske1] [varchar](30) NULL DEFAULT (''),
  [Maske2] [varchar](30) NULL DEFAULT (''),
  [Maske3] [varchar](30) NULL DEFAULT (''),
  [Maske4] [varchar](30) NULL DEFAULT (''),
  [Maske5] [varchar](30) NULL DEFAULT (''),
  [Maske6] [varchar](30) NULL DEFAULT (''),
  [Maske7] [varchar](30) NULL DEFAULT (''),
  [Maske8] [varchar](30) NULL DEFAULT (''),
  [Maske9] [varchar](30) NULL DEFAULT (''),
  [Maske10] [varchar](30) NULL DEFAULT (''),
  [Maske11] [varchar](30) NULL DEFAULT (''),
  [Maske12] [varchar](30) NULL DEFAULT (''),
  [SeviyeAdi1] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi2] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi3] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi4] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi5] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi6] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi7] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi8] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi9] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi10] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi11] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi12] [varchar](20) NULL DEFAULT (''),
  [cGrideAlinabilsin] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([KulTanTanimi_rowid])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KulTanTanimiKey]
  ON [GUSTO00005].[KulTanTanimi] ([nModul], [cTur], [sAd])
  ON [PRIMARY]
GO