CREATE TABLE [GUSTO00001].[DokumanRevizyon] (
  [DokumanRevizyon_rowid] [int] IDENTITY,
  [sRevizyonNo] [varchar](60) NULL DEFAULT (''),
  [dtTarih] [smalldatetime] NULL,
  [sDokumanDosyasi] [varchar](60) NULL DEFAULT (''),
  [sDokumanPath] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pDokuman] [int] NULL DEFAULT (0),
  [pDegisTalep] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DokumanRevizyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO