CREATE TABLE [GUSTO00001].[BankaVirman] (
  [BankaVirman_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaVirman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BVirSeriNoKey]
  ON [GUSTO00001].[BankaVirman] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BVirTarihSeriNoKey]
  ON [GUSTO00001].[BankaVirman] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO