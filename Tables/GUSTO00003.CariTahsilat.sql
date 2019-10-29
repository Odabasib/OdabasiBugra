CREATE TABLE [GUSTO00003].[CariTahsilat] (
  [CariTahsilat_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [sTeslimEden] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CariTahsilat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CTahSeriNoKey]
  ON [GUSTO00003].[CariTahsilat] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CTahTarihSeriNoKey]
  ON [GUSTO00003].[CariTahsilat] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO