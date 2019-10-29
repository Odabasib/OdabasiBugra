CREATE TABLE [GUSTO00003].[BelgeEsleme] (
  [BelgeEsleme_rowid] [int] IDENTITY,
  [sBelgeTuru] [varchar](255) NULL DEFAULT (''),
  [sBelgeNo] [varchar](255) NULL DEFAULT (''),
  [pBelge] [int] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([BelgeEsleme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO