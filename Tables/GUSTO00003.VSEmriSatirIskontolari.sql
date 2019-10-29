CREATE TABLE [GUSTO00003].[VSEmriSatirIskontolari] (
  [VSEmriSatirIskontolari_rowid] [int] IDENTITY,
  [pSatir] [int] NULL DEFAULT (0),
  [dSira] [real] NULL DEFAULT (0.000000),
  [cTur] [char](1) NULL DEFAULT (' '),
  [bOranSabit] [bit] NULL DEFAULT (0),
  [ldIskontoOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pIskontoTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VSEmriSatirIskontolari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketSiraKey]
  ON [GUSTO00003].[VSEmriSatirIskontolari] ([pSatir], [dSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO