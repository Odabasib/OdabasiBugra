CREATE TABLE [GUSTO00001].[VergiTanimlar] (
  [VergiTanimlar_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [nUygulamaYeri] [tinyint] NULL DEFAULT (0),
  [nUygulamaBelge] [tinyint] NULL DEFAULT (0),
  [nDurumu] [tinyint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nTumCariler] [tinyint] NULL DEFAULT (0),
  [nTumCariGruplar] [tinyint] NULL DEFAULT (0),
  [nTumStoklar] [tinyint] NULL DEFAULT (0),
  [nTumHizmetler] [tinyint] NULL DEFAULT (0),
  [nTumDemirbaslar] [tinyint] NULL DEFAULT (0),
  [nTumSetler] [tinyint] NULL DEFAULT (0),
  [pHesapKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VergiTanimlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO