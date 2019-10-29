CREATE TABLE [GUSTO00001].[EkAlanTanimi] (
  [EkAlanTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [nSira] [smallint] NULL DEFAULT (0),
  [sEkAlanAdi] [varchar](120) NULL DEFAULT (''),
  [cTip] [char](1) NULL DEFAULT (' '),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [nOndalikHaneSayisi] [tinyint] NULL DEFAULT (0),
  [cBinlikAyirac] [char](1) NULL DEFAULT (' '),
  [pFormul] [int] NULL DEFAULT (0),
  [cGrideAlinabilsin] [char](1) NULL DEFAULT (' '),
  [cFlag1] [char](1) NULL DEFAULT (' '),
  [cFlag2] [char](1) NULL DEFAULT (' '),
  [cFlag3] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([EkAlanTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EkAlanSiraKey]
  ON [GUSTO00001].[EkAlanTanimi] ([nModul], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO