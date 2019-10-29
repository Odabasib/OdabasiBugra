CREATE TABLE [GUSTO00001].[SabitKTransferSatir] (
  [SabitKTransferSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pSabitKKodu] [int] NULL DEFAULT (0),
  [pEskiSabitKKodu] [int] NULL DEFAULT (0),
  [pSabitKIzlemeKodu] [int] NULL DEFAULT (0),
  [pSabitKYeriKodu] [int] NULL DEFAULT (0),
  [pEskiSabitKYeriKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [pEskiPersonelKodu] [int] NULL DEFAULT (0),
  [pZimmet] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [ldSonDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirikmisAmortisman] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKTransferSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pZimmet]
  ON [GUSTO00001].[SabitKTransferSatir] ([pZimmet], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO