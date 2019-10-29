CREATE TABLE [GUSTO00001].[CariBorcDekontu] (
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
  ON [GUSTO00001].[CariBorcDekontu] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CDekBorcTarihSeriNoKey]
  ON [GUSTO00001].[CariBorcDekontu] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO