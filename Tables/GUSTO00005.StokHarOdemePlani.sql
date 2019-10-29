CREATE TABLE [GUSTO00005].[StokHarOdemePlani] (
  [StokHarOdemePlani_rowid] [int] IDENTITY,
  [cHareketTuru] [char](1) NULL DEFAULT (' '),
  [pHareket] [int] NULL DEFAULT (0),
  [nVade] [smallint] NULL DEFAULT (0),
  [ldOdemeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [fYuzde] [real] NULL DEFAULT (0.000000),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [nVadeSureHesapTipi] [tinyint] NULL DEFAULT (0),
  [nVadeSureYuvTipi] [tinyint] NULL DEFAULT (0),
  [dtOrginalTarih] [smalldatetime] NULL,
  [bKDVSatiri] [bit] NULL DEFAULT (0),
  [nIlkKayitYeri] [smallint] NULL DEFAULT (0),
  [nSonGuncellemeYeri] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarOdemePlani_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketGunKey]
  ON [GUSTO00005].[StokHarOdemePlani] ([pHareket], [nVade])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOdemeKosulu]
  ON [GUSTO00005].[StokHarOdemePlani] ([pOdemeKosulu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO