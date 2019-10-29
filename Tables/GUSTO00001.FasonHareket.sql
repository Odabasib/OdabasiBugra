CREATE TABLE [GUSTO00001].[FasonHareket] (
  [FasonHareket_rowid] [int] IDENTITY,
  [pIsEmri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pHareketBaslik] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [cGirisCikis] [char](1) NOT NULL DEFAULT ('0'),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  [ldMalMiktari1Birim] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldMalMiktari2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalMiktari3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [ldFasonUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nFasonUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FasonHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsEmri]
  ON [GUSTO00001].[FasonHareket] ([pIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00001].[FasonHareket] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00001].[FasonHareket] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO