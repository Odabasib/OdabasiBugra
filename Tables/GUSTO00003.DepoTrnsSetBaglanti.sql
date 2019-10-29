CREATE TABLE [GUSTO00003].[DepoTrnsSetBaglanti] (
  [DepoTrnsSetBaglanti_rowid] [int] IDENTITY,
  [pDepoHareketBaslik] [int] NULL DEFAULT (0),
  [bDepoTransferEmri] [bit] NULL DEFAULT (0),
  [pSetKodu] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoHareket] [int] NULL DEFAULT (0),
  [pBagliOlduguSatir] [int] NULL DEFAULT (0),
  [ldMiktar1Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [nSira] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DepoTrnsSetBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DepoTrnsBaslikSetStokKey]
  ON [GUSTO00003].[DepoTrnsSetBaglanti] ([pDepoHareketBaslik], [bDepoTransferEmri], [pSetKodu], [pStokKodu], [pIzlemeKodu], [pDepoHareket], [pBagliOlduguSatir], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO