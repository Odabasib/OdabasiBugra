CREATE TABLE [GUSTO00005].[EkVergiSatirlar] (
  [EkVergiSatirlar_rowid] [int] IDENTITY,
  [pVergiTanimi] [int] NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [sHareketTuru] [varchar](2) NULL DEFAULT (''),
  [ldEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pIstisnaTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkVergiSatirlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Hareket]
  ON [GUSTO00005].[EkVergiSatirlar] ([pHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Vergi]
  ON [GUSTO00005].[EkVergiSatirlar] ([pVergiTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO