CREATE TABLE [GUSTO00001].[DigerTediye] (
  [DigerTediye_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DigerTediye_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DTedSeriNoKey]
  ON [GUSTO00001].[DigerTediye] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DTedTarihSeriNoKey]
  ON [GUSTO00001].[DigerTediye] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO