CREATE TABLE [GUSTO00004].[CariBorcDekontu] (
  [CariBorcDekontu_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [sTeslimAlan] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CariBorcDekontu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CDekBorcSeriNoKey]
  ON [GUSTO00004].[CariBorcDekontu] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CDekBorcTarihSeriNoKey]
  ON [GUSTO00004].[CariBorcDekontu] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO