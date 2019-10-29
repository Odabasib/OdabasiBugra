CREATE TABLE [GUSTO00005].[Mektup] (
  [Mektup_rowid] [int] IDENTITY,
  [pCariKod] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Mektup_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pCariKod]
  ON [GUSTO00005].[Mektup] ([pCariKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO