CREATE TABLE [GUSTO00003].[SeferAracBaglanti] (
  [SeferAracBaglanti_rowid] [int] IDENTITY,
  [pAracSefer] [int] NULL DEFAULT (0),
  [pAracKodu] [int] NULL DEFAULT (0),
  [ldCikisKm] [decimal](22, 6) NULL DEFAULT (0),
  [ldDonusKm] [decimal](22, 6) NULL DEFAULT (0),
  [dtCikis] [smalldatetime] NULL,
  [dtDonus] [smalldatetime] NULL,
  [sCikisSaati] [varchar](12) NULL DEFAULT (''),
  [sDonusSaati] [varchar](12) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SeferAracBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO