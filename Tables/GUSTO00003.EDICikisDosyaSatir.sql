CREATE TABLE [GUSTO00003].[EDICikisDosyaSatir] (
  [EDICikisDosyaSatir_rowid] [int] IDENTITY,
  [pTanim] [int] NULL DEFAULT (0),
  [sDegerAdi] [varchar](49) NULL DEFAULT (''),
  [nSatir] [int] NULL DEFAULT (0),
  [nBaslangic] [int] NULL DEFAULT (0),
  [nBitis] [int] NULL DEFAULT (0),
  [nTur] [int] NULL DEFAULT (0),
  [pNesne] [int] NULL DEFAULT (0),
  [sDeger] [varchar](49) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDICikisDosyaSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO