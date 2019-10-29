CREATE TABLE [GUSTO00001].[AracMuayene] (
  [AracMuayene_rowid] [int] IDENTITY,
  [pAracKodu] [int] NULL DEFAULT (0),
  [dtMuayene] [smalldatetime] NULL,
  [dtMuayeneBitis] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracMuayene_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO