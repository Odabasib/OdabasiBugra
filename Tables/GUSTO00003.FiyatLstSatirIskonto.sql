CREATE TABLE [GUSTO00003].[FiyatLstSatirIskonto] (
  [FiyatLstSatirIskonto_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [pFiyatListesiSatir] [int] NULL DEFAULT (0),
  [dSira] [real] NULL DEFAULT (0.000000),
  [pIskontoTanimi] [int] NULL DEFAULT (0),
  [ldIskontoTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldIskontoOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldIskontoSonrasiTutar] [decimal](22, 6) NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatLstSatirIskonto_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FLSatirSiraKey]
  ON [GUSTO00003].[FiyatLstSatirIskonto] ([pFiyatListesiSatir], [dSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO