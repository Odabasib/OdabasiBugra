CREATE TABLE [GUSTO00005].[EB_HaricFisler] (
  [EB_HaricFisler_rowid] [int] IDENTITY,
  [pFis] [int] NULL DEFAULT (0),
  [pFirma] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EB_HaricFisler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO