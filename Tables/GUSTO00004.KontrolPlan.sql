CREATE TABLE [GUSTO00004].[KontrolPlan] (
  [KontrolPlan_rowid] [int] IDENTITY,
  [sKod] [varchar](50) NOT NULL DEFAULT (''),
  [sAd] [varchar](50) NOT NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [smallint] NULL DEFAULT (0),
  [bKontrolZorunlu] [bit] NULL DEFAULT (0),
  [bOnayZorunlu] [bit] NULL DEFAULT (0),
  [pOnayKodu] [int] NULL DEFAULT (0),
  [cKontrolAktiviteTipi] [smallint] NOT NULL DEFAULT (0),
  [pGirisDepoKodu] [int] NULL DEFAULT (0),
  [pHedefDepoKodu] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](2048) NULL DEFAULT (''),
  [pKaliteDokumanKodu] [int] NULL DEFAULT (0),
  [pFMEABaslik] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cKontrolAktiviteTipi]
  ON [GUSTO00004].[KontrolPlan] ([cKontrolAktiviteTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGirisDepoKodu]
  ON [GUSTO00004].[KontrolPlan] ([pGirisDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHedefDepoKodu]
  ON [GUSTO00004].[KontrolPlan] ([pHedefDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUstKod]
  ON [GUSTO00004].[KontrolPlan] ([pUstKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00004].[KontrolPlan] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00004].[KontrolPlan] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAd]
  ON [GUSTO00004].[KontrolPlan] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKod]
  ON [GUSTO00004].[KontrolPlan] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO