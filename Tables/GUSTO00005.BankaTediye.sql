CREATE TABLE [GUSTO00005].[BankaTediye] (
  [BankaTediye_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pYatiran] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaTediye_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BTedSeriNoKey]
  ON [GUSTO00005].[BankaTediye] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BTedTarihSeriNoKey]
  ON [GUSTO00005].[BankaTediye] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO