CREATE TABLE [GUSTO00004].[KampanyaCariler] (
  [KampanyaCariler_rowid] [int] IDENTITY,
  [pCariKodu] [int] NULL DEFAULT (0),
  [pKampanyaTanim] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([KampanyaCariler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO