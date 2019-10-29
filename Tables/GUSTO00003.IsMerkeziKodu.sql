CREATE TABLE [GUSTO00003].[IsMerkeziKodu] (
  [IsMerkeziKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [bDirekIsMerkeziMi] [bit] NULL DEFAULT (0),
  [nIsMerkeziTuru] [smallint] NOT NULL DEFAULT (1),
  [pBolum] [int] NULL DEFAULT (0),
  [pYerKodu] [int] NULL DEFAULT (0),
  [pDepoKodu] [int] NULL DEFAULT (0),
  [pGiderYeri] [int] NULL DEFAULT (0),
  [pBakimGiderYeri] [int] NULL DEFAULT (0),
  [nDagitimKriteri] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pCalismaTakvimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsMerkeziKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00003].[IsMerkeziKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00003].[IsMerkeziKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00003].[IsMerkeziKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00003].[IsMerkeziKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO