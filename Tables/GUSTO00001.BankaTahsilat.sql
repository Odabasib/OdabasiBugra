CREATE TABLE [GUSTO00001].[BankaTahsilat] (
  [BankaTahsilat_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pTahsilEden] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaTahsilat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BTahSeriNoKey]
  ON [GUSTO00001].[BankaTahsilat] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BTahTarihSeriNoKey]
  ON [GUSTO00001].[BankaTahsilat] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO