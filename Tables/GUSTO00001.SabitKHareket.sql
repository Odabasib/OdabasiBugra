CREATE TABLE [GUSTO00001].[SabitKHareket] (
  [SabitKHareket_rowid] [int] IDENTITY,
  [nHareketYili] [smallint] NULL DEFAULT (0),
  [nIslemDonemi] [tinyint] NULL DEFAULT (0),
  [pSabitKKodu] [int] NULL DEFAULT (0),
  [pSKIzlemeKodu] [int] NULL DEFAULT (0),
  [nIslemTipi] [tinyint] NULL DEFAULT (0),
  [fOran] [real] NULL DEFAULT (0.000000),
  [ldBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldEskiSonDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldYeniSonDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldEskiBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [ldYeniBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [ldEskiSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldYeniSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldSabKiyDegerArtisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirAmortismanDegArt] [decimal](22, 2) NULL DEFAULT (0),
  [ldYeniDegFon] [decimal](22, 2) NULL DEFAULT (0),
  [ldSermayeArtisi] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemId] [int] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IslemYilDonem]
  ON [GUSTO00001].[SabitKHareket] ([nHareketYili], [nIslemDonemi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIslemId]
  ON [GUSTO00001].[SabitKHareket] ([pIslemId], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SabitKHareketIzlemeYilTip]
  ON [GUSTO00001].[SabitKHareket] ([pSKIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO