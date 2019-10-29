CREATE TABLE [GUSTO00004].[StokYuruyenMaliyet] (
  [StokYuruyenMaliyet_rowid] [int] IDENTITY,
  [pStokKarti] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [cGirisCikis] [char](1) NULL DEFAULT (' '),
  [nSira] [smallint] NULL DEFAULT (0),
  [ldYuruyenAgirlikliOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldsdYuruyenAgirlikliOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldhdYuruyenAgirlikliOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldStoktakiMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldStoktakiMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldStoktakiMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalAlisHrkTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdMalAlisHrkTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdMalAlisHrkTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pStokHareket] [int] NULL DEFAULT (0),
  [ldStokYuruyenMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokYuruyenMaliyet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokDepoTarihKey]
  ON [GUSTO00004].[StokYuruyenMaliyet] ([pStokKarti], [pIzlemeKodu], [pDepoMaliyetKodu], [dtTarih], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokHareketKey]
  ON [GUSTO00004].[StokYuruyenMaliyet] ([pStokHareket], [pIzlemeKodu], [pDepoMaliyetKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO