CREATE TABLE [GUSTO00001].[MSSozlesmeOLENesnesi] (
  [MSSozlesmeOLENesnesi_rowid] [int] IDENTITY,
  [pMSSozlesme] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSSozlesmeOLENesnesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMSSozlesme]
  ON [GUSTO00001].[MSSozlesmeOLENesnesi] ([pMSSozlesme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO