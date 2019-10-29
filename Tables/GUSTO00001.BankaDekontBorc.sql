CREATE TABLE [GUSTO00001].[BankaDekontBorc] (
  [BankaDekontBorc_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](30) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaDekontBorc_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BDekBorcSeriNoKey]
  ON [GUSTO00001].[BankaDekontBorc] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BDekBorcTarihSeriNoKey]
  ON [GUSTO00001].[BankaDekontBorc] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO