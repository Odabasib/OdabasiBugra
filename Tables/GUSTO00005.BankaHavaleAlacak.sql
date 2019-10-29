CREATE TABLE [GUSTO00005].[BankaHavaleAlacak] (
  [BankaHavaleAlacak_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [pSubeKodu] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaHavaleAlacak_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BHavAlcSeriNoKey]
  ON [GUSTO00005].[BankaHavaleAlacak] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BHavAlcTarihSeriNoKey]
  ON [GUSTO00005].[BankaHavaleAlacak] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO