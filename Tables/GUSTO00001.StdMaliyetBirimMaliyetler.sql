CREATE TABLE [GUSTO00001].[StdMaliyetBirimMaliyetler] (
  [StdMaliyetBirimMaliyetler_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pHesap] [int] NULL DEFAULT (0),
  [pUstSatir] [int] NULL DEFAULT (0),
  [pUrunAgaci] [int] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldKur] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [ldHdMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [ldSdMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StdMaliyetBirimMaliyetler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBaslik]
  ON [GUSTO00001].[StdMaliyetBirimMaliyetler] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHesap]
  ON [GUSTO00001].[StdMaliyetBirimMaliyetler] ([pHesap])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUstSatir]
  ON [GUSTO00001].[StdMaliyetBirimMaliyetler] ([pUstSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO