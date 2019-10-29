CREATE TABLE [GUSTO00005].[BankaMektup] (
  [BankaMektup_rowid] [int] IDENTITY,
  [pBankaKod] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaMektup_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBankaKod]
  ON [GUSTO00005].[BankaMektup] ([pBankaKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO