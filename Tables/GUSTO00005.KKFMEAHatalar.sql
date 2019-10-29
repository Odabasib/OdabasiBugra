CREATE TABLE [GUSTO00005].[KKFMEAHatalar] (
  [KKFMEAHatalar_rowid] [int] IDENTITY,
  [pKKFMEAProses] [int] NOT NULL DEFAULT (0),
  [sHataTanimi] [varchar](50) NOT NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAHatalar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEAProses]
  ON [GUSTO00005].[KKFMEAHatalar] ([pKKFMEAProses])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO