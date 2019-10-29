CREATE TABLE [GUSTO00004].[StandartMaliyetSatir] (
  [StandartMaliyetSatir_rowid] [int] IDENTITY,
  [pUrunSatiri] [int] NULL DEFAULT (0),
  [pHesap] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
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
  PRIMARY KEY CLUSTERED ([StandartMaliyetSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHesap]
  ON [GUSTO00004].[StandartMaliyetSatir] ([pHesap])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunSatiri]
  ON [GUSTO00004].[StandartMaliyetSatir] ([pUrunSatiri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUstSatir]
  ON [GUSTO00004].[StandartMaliyetSatir] ([pUstSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO