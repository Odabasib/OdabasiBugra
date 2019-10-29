CREATE TABLE [GUSTO00001].[MStokHareket] (
  [MStokHareket_rowid] [int] IDENTITY,
  [pHareketBaslik] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [cGirisCikis] [char](1) NOT NULL DEFAULT (' '),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT (' '),
  [ldMalMiktari1Birim] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldMalMiktari2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalMiktari3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldToplamFiyatKDVsiz] [decimal](22, 2) NULL DEFAULT (0),
  [ldFAIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitilmisEkmaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [nSira] [smallint] NULL DEFAULT (0),
  [ldMaliyetFiyatiKDVsiz] [decimal](22, 6) NULL DEFAULT (0),
  [pYuruyenMaliyet] [int] NULL DEFAULT (0),
  [pIzKoduYuruyenMaliyet] [int] NULL DEFAULT (0),
  [pDepoMlytKoduYuruyenMaliyet] [int] NULL DEFAULT (0),
  [nLevel] [smallint] NULL DEFAULT (0),
  [pDepoHareket] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MStokHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KodGirisCikisTarihKey]
  ON [GUSTO00001].[MStokHareket] ([pStokKodu], [dtTarih], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokTumIzTarihHrkTuruKey]
  ON [GUSTO00001].[MStokHareket] ([pStokKodu], [dtTarih], [nHareketTuru], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO