CREATE TABLE [GUSTO00004].[CariTediye] (
  [CariTediye_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CariTediye_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CTedSeriNoKey]
  ON [GUSTO00004].[CariTediye] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CTedTarihSeriNoKey]
  ON [GUSTO00004].[CariTediye] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO