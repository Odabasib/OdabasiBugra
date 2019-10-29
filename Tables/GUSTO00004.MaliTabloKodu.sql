CREATE TABLE [GUSTO00004].[MaliTabloKodu] (
  [MaliTabloKodu_rowid] [int] IDENTITY,
  [pMaliTabloAd] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [cHesaplandi] [char](1) NULL DEFAULT (' '),
  [cGorunum] [char](1) NULL DEFAULT (' '),
  [cKarakter] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bLikomStandart] [bit] NULL DEFAULT (0),
  [sEbeyannameKodu] [varchar](41) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MTAdKey]
  ON [GUSTO00004].[MaliTabloKodu] ([pMaliTabloAd], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [MTKodKey]
  ON [GUSTO00004].[MaliTabloKodu] ([pMaliTabloAd], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MTUstKodAdKey]
  ON [GUSTO00004].[MaliTabloKodu] ([pMaliTabloAd], [pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [MTUstKodKodKey]
  ON [GUSTO00004].[MaliTabloKodu] ([pMaliTabloAd], [pUstKod], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO