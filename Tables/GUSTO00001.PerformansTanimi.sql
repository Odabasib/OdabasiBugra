CREATE TABLE [GUSTO00001].[PerformansTanimi] (
  [PerformansTanimi_rowid] [int] IDENTITY,
  [sKod] [varchar](50) NOT NULL DEFAULT (''),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00001].[PerformansTanimi] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO