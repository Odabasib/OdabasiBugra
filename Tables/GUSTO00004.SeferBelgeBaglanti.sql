CREATE TABLE [GUSTO00004].[SeferBelgeBaglanti] (
  [SeferBelgeBaglanti_rowid] [int] IDENTITY,
  [pSeferAracBaglanti] [int] NULL DEFAULT (0),
  [cBelgeTuru] [char](1) NULL DEFAULT (' '),
  [pBelgeBaslik] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SeferBelgeBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO