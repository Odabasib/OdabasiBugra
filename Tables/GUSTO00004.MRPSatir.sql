CREATE TABLE [GUSTO00004].[MRPSatir] (
  [MRPSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pSatir] [int] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [dtBelgeTarihi] [smalldatetime] NULL,
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [ldBelgeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtTeslimTarihi] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([MRPSatir_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [HedefTur]
  ON [GUSTO00004].[MRPSatir] ([pStokKodu])
  ON [PRIMARY]
GO

CREATE INDEX [KaynakTur]
  ON [GUSTO00004].[MRPSatir] ([pSatir], [nTur])
  ON [PRIMARY]
GO

CREATE INDEX [pBaslik]
  ON [GUSTO00004].[MRPSatir] ([pBaslik])
  ON [PRIMARY]
GO