CREATE TABLE [GUSTO00004].[SabitKIzlemeDetayTFRS] (
  [SabitKIzlemeDetayTFRS_rowid] [int] IDENTITY,
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [dtSonKullanim] [smalldatetime] NULL,
  [nRafOmru] [int] NULL DEFAULT (0),
  [dtUretim] [smalldatetime] NULL,
  [pSabitKymTurleri] [int] NULL DEFAULT (0),
  [bKisitAmortisman] [bit] NULL DEFAULT (0),
  [cAmortismanSekli] [tinyint] NULL DEFAULT (0),
  [bYeniDegerTabi] [bit] NULL DEFAULT (0),
  [nAmortismanSuresi] [smallint] NULL DEFAULT (0),
  [ldAmortismanOrani] [decimal](22, 6) NULL DEFAULT (0),
  [nAmortismanKalanYil] [smallint] NULL DEFAULT (0),
  [ldDevredenSonDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenAmortismanDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenYeniDegerFon] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldYenidenDegerlemeFonu] [decimal](22, 2) NULL DEFAULT (0),
  [ldSermayeArtisi] [decimal](22, 2) NULL DEFAULT (0),
  [dtAlinisTarihi] [smalldatetime] NULL,
  [ldAlinisFiyati] [decimal](22, 2) NULL DEFAULT (0),
  [bHareketVarmi] [bit] NULL DEFAULT (0),
  [bOmruDoldu] [bit] NULL DEFAULT (0),
  [ldKisitliKalan] [decimal](22, 2) NULL DEFAULT (0),
  [bDevreden] [bit] NULL DEFAULT (0),
  [pAlimHareketi] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKIzlemeDetayTFRS_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAlimHareketi]
  ON [GUSTO00004].[SabitKIzlemeDetayTFRS] ([pAlimHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSabitKymTurleri]
  ON [GUSTO00004].[SabitKIzlemeDetayTFRS] ([pSabitKymTurleri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO