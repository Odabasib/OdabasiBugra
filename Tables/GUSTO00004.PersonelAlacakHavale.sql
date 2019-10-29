CREATE TABLE [GUSTO00004].[PersonelAlacakHavale] (
  [PersonelAlacakHavale_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelAlacakHavale_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BelgeSeriNoKey]
  ON [GUSTO00004].[PersonelAlacakHavale] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BelgeTarihSeriNoKey]
  ON [GUSTO00004].[PersonelAlacakHavale] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO