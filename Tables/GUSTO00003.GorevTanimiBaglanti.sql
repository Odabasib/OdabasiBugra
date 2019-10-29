CREATE TABLE [GUSTO00003].[GorevTanimiBaglanti] (
  [GorevTanimiBaglanti_rowid] [int] IDENTITY,
  [pAlternatifGorevTanimi] [int] NOT NULL DEFAULT (0),
  [pGorevTanimi] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GorevTanimiBaglanti_rowid])
)
ON [PRIMARY]
GO