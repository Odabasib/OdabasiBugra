CREATE TABLE [GUSTO00004].[OperasyonMlytMuhasebesi] (
  [OperasyonMlytMuhasebesi_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pHareketBaslik] [int] NULL DEFAULT (0),
  [pIsMerkezi] [int] NOT NULL DEFAULT (0),
  [pYansitmaKodu] [int] NOT NULL DEFAULT (0),
  [pYansitmaTuru] [int] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [pHesapTuru] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonMlytMuhasebesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00004].[OperasyonMlytMuhasebesi] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHareketBaslik]
  ON [GUSTO00004].[OperasyonMlytMuhasebesi] ([pHareketBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO