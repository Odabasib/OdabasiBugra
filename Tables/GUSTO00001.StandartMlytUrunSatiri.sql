CREATE TABLE [GUSTO00001].[StandartMlytUrunSatiri] (
  [StandartMlytUrunSatiri_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pUrunAgaci] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [ldHdMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [ldSdMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StandartMlytUrunSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBaslik]
  ON [GUSTO00001].[StandartMlytUrunSatiri] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00001].[StandartMlytUrunSatiri] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO