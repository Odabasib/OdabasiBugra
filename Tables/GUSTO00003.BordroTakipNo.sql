CREATE TABLE [GUSTO00003].[BordroTakipNo] (
  [BordroTakipNo_rowid] [int] IDENTITY,
  [cTip] [char](1) NULL DEFAULT (' '),
  [nYil] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [nBelgeNo] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BordroTakipNo_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TipYilAyIsyeriKey]
  ON [GUSTO00003].[BordroTakipNo] ([nYil], [nAy], [pIsyeri], [cTip])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YilAyKey]
  ON [GUSTO00003].[BordroTakipNo] ([nYil], [nAy], [pIkramiyeTanimi], [pIsyeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO