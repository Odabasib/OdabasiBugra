CREATE TABLE [GUSTO00001].[FaturaAltiIskonto] (
  [FaturaAltiIskonto_rowid] [int] IDENTITY,
  [pFatura] [int] NULL DEFAULT (0),
  [dSira] [real] NULL DEFAULT (0.000000),
  [pHizmetHareketi] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaAltiIskonto_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketSiraKey]
  ON [GUSTO00001].[FaturaAltiIskonto] ([pFatura], [dSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHizmetHareketi]
  ON [GUSTO00001].[FaturaAltiIskonto] ([pHizmetHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO