CREATE TABLE [GUSTO00005].[ButceKodu] (
  [ButceKodu_rowid] [int] IDENTITY,
  [sButceKodu] [varchar](50) NULL DEFAULT (''),
  [sButceAdi] [varchar](50) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [smallint] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [bButceTipi] [bit] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [cButceTuru] [char](1) NULL DEFAULT (' '),
  [cBorcAlacak] [char](1) NULL DEFAULT (' '),
  [pBaglantiliButceKodu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ButceKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sButceAdi]
  ON [GUSTO00005].[ButceKodu] ([sButceAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sButceKodu]
  ON [GUSTO00005].[ButceKodu] ([sButceKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00005].[ButceKodu] ([pUstKod], [sButceAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00005].[ButceKodu] ([pUstKod], [sButceKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO