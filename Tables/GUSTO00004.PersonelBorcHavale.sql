CREATE TABLE [GUSTO00004].[PersonelBorcHavale] (
  [PersonelBorcHavale_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelBorcHavale_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BHavAlcSeriNoKey]
  ON [GUSTO00004].[PersonelBorcHavale] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BHavAlcTarihSeriNoKey]
  ON [GUSTO00004].[PersonelBorcHavale] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO