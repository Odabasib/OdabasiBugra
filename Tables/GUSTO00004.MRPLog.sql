CREATE TABLE [GUSTO00004].[MRPLog] (
  [MRPLog_rowid] [int] IDENTITY,
  [sKaynakTuru] [varchar](50) NULL DEFAULT (''),
  [pKaynak] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](1000) NULL DEFAULT (''),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldKullanilanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pBagliSiparis] [int] NULL DEFAULT (0),
  [pBaslik] [int] NULL DEFAULT (0),
  [dtIsEmriTarihi] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([MRPLog_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HedefTur]
  ON [GUSTO00004].[MRPLog] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KaynakTur]
  ON [GUSTO00004].[MRPLog] ([pKaynak])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO