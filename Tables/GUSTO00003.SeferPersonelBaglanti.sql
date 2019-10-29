CREATE TABLE [GUSTO00003].[SeferPersonelBaglanti] (
  [SeferPersonelBaglanti_rowid] [int] IDENTITY,
  [pSeferAracBaglanti] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pPersonelHareketAvans] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SeferPersonelBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO