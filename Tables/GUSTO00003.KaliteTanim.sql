CREATE TABLE [GUSTO00003].[KaliteTanim] (
  [KaliteTanim_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [sTanim] [text] NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO