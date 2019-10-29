CREATE TABLE [GUSTO00005].[EnDirekMlytHspKodlari] (
  [EnDirekMlytHspKodlari_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NOT NULL,
  [pIsMerkezi] [int] NOT NULL DEFAULT (0),
  [cKartTuru] [char](1) NULL DEFAULT ('M'),
  [pKodTanimi] [int] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  [pHesapKodu] [int] NULL DEFAULT (0),
  [pGelirGiderTuru] [int] NULL DEFAULT (0),
  [bYansitma] [bit] NULL DEFAULT (0),
  [bBorcAlacak] [bit] NULL DEFAULT (0),
  [pYansitmaKodu] [int] NULL DEFAULT (0),
  [pYansitmaGGTuru] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EnDirekMlytHspKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00005].[EnDirekMlytHspKodlari] ([dtTarih], [pKodTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsMerkezi]
  ON [GUSTO00005].[EnDirekMlytHspKodlari] ([pIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO