CREATE TABLE [GUSTO00001].[FaturaIstisnaTanimlari] (
  [FaturaIstisnaTanimlari_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  [nUygulamaBelge] [tinyint] NULL DEFAULT (0),
  [nIstisnaTuru] [tinyint] NULL DEFAULT (0),
  [nDurumu] [tinyint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaIstisnaTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdTur]
  ON [GUSTO00001].[FaturaIstisnaTanimlari] ([sAd], [nIstisnaTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EvrenselKodTur]
  ON [GUSTO00001].[FaturaIstisnaTanimlari] ([sEvrenselKodu], [nIstisnaTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO