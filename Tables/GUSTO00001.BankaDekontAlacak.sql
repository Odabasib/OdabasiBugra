CREATE TABLE [GUSTO00001].[BankaDekontAlacak] (
  [BankaDekontAlacak_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](30) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaDekontAlacak_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BDekAlcSeriNoKey]
  ON [GUSTO00001].[BankaDekontAlacak] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BDekAlcTarihSeriNoKey]
  ON [GUSTO00001].[BankaDekontAlacak] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO