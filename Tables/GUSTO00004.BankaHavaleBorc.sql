CREATE TABLE [GUSTO00004].[BankaHavaleBorc] (
  [BankaHavaleBorc_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaHavaleBorc_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BHavBorcSeriNoKey]
  ON [GUSTO00004].[BankaHavaleBorc] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BHavBorcTarihSeriNoKey]
  ON [GUSTO00004].[BankaHavaleBorc] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO