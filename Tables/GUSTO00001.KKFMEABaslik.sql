CREATE TABLE [GUSTO00001].[KKFMEABaslik] (
  [KKFMEABaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](50) NOT NULL DEFAULT (''),
  [lNo] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [dtDokumanTarihi] [smalldatetime] NULL,
  [dtYayinTarihi] [smalldatetime] NULL,
  [cUygulamaKapsami] [smallint] NULL DEFAULT (0),
  [pSorumluBolum] [int] NULL DEFAULT (0),
  [pHazirlayanBolum] [int] NULL DEFAULT (0),
  [pOnaylayanBolum] [int] NULL DEFAULT (0),
  [pOnayKodu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEABaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [lNo]
  ON [GUSTO00001].[KKFMEABaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHazirlayanBolum]
  ON [GUSTO00001].[KKFMEABaslik] ([pHazirlayanBolum])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOnaylayanBolum]
  ON [GUSTO00001].[KKFMEABaslik] ([pOnaylayanBolum])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSorumluBolum]
  ON [GUSTO00001].[KKFMEABaslik] ([pSorumluBolum])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00001].[KKFMEABaslik] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sSeri]
  ON [GUSTO00001].[KKFMEABaslik] ([sSeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO