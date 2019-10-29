CREATE TABLE [GUSTO00004].[AnketUygulananlar] (
  [AnketUygulananlar_rowid] [int] IDENTITY,
  [pUygulanan] [int] NOT NULL DEFAULT (0),
  [pAnket] [int] NOT NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AnketUygulananlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO