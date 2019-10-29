CREATE TABLE [GUSTO00003].[EDIGustoIslemSatir] (
  [EDIGustoIslemSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pSatir] [int] NULL DEFAULT (0),
  [pAlan] [int] NULL DEFAULT (0),
  [nBelgeAlani] [int] NULL DEFAULT (0),
  [nGustoIslemi] [int] NULL DEFAULT (0),
  [cDegerTuru] [char](1) NULL DEFAULT (' '),
  [sDeger] [varchar](50) NULL DEFAULT (''),
  [pDeger] [int] NULL DEFAULT (0),
  [nModulNo] [int] NULL DEFAULT (0),
  [nTableNo] [int] NULL DEFAULT (0),
  [sAlanAdi] [varchar](255) NULL DEFAULT (''),
  [bBaslikAlani] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIGustoIslemSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBaslik]
  ON [GUSTO00003].[EDIGustoIslemSatir] ([pBaslik], [nBelgeAlani])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO