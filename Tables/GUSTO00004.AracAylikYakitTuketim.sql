CREATE TABLE [GUSTO00004].[AracAylikYakitTuketim] (
  [AracAylikYakitTuketim_rowid] [int] IDENTITY,
  [pAracKodu] [int] NULL DEFAULT (0),
  [nYil] [smallint] NULL DEFAULT (0),
  [cYakitTuru] [char](1) NULL DEFAULT (' '),
  [ldKoyulanYakitOcak] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitSubat] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitMart] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitNisan] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitMayis] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitHaziran] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitTemmuz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitAgustos] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitEylul] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitEkim] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitKasim] [decimal](22, 6) NULL DEFAULT (0),
  [ldKoyulanYakitAralik] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracAylikYakitTuketim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO