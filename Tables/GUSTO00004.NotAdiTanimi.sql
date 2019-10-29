CREATE TABLE [GUSTO00004].[NotAdiTanimi] (
  [NotAdiTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [sNotAdi] [varchar](30) NULL DEFAULT (''),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [sVarsayilan] [varchar](2048) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([NotAdiTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [NotAdiKey]
  ON [GUSTO00004].[NotAdiTanimi] ([nModul], [cTur], [sNotAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO