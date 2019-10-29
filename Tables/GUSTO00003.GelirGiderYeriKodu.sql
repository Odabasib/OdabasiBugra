CREATE TABLE [GUSTO00003].[GelirGiderYeriKodu] (
  [GelirGiderYeriKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pGelirGiderDetayi] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [cGelirGiderSekli] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelirGiderYeriKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GGYGelirGiderKey]
  ON [GUSTO00003].[GelirGiderYeriKodu] ([cGelirGiderSekli], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GGYUstKodAdKey]
  ON [GUSTO00003].[GelirGiderYeriKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GGYUstKodKey]
  ON [GUSTO00003].[GelirGiderYeriKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00003].[GelirGiderYeriKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKod]
  ON [GUSTO00003].[GelirGiderYeriKodu] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO