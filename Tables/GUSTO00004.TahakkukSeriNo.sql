CREATE TABLE [GUSTO00004].[TahakkukSeriNo] (
  [TahakkukSeriNo_rowid] [int] IDENTITY,
  [cTip] [char](1) NULL DEFAULT (' '),
  [pTahakkuk] [int] NOT NULL DEFAULT (0),
  [nTur] [tinyint] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nNo] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TahakkukSeriNo_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TahakkukTurKey]
  ON [GUSTO00004].[TahakkukSeriNo] ([pTahakkuk])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO