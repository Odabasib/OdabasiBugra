CREATE TABLE [GUSTO00001].[DigerVirman] (
  [DigerVirman_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pIsleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DigerVirman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DVirSeriNoKey]
  ON [GUSTO00001].[DigerVirman] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DVirTarihSeriNoKey]
  ON [GUSTO00001].[DigerVirman] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO