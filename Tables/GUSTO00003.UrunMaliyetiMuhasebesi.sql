CREATE TABLE [GUSTO00003].[UrunMaliyetiMuhasebesi] (
  [UrunMaliyetiMuhasebesi_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pHareketBaslik] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pIsMerkezi] [int] NOT NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [pGelirGiderTuru] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UrunMaliyetiMuhasebesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00003].[UrunMaliyetiMuhasebesi] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHareketBaslik]
  ON [GUSTO00003].[UrunMaliyetiMuhasebesi] ([pHareketBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO