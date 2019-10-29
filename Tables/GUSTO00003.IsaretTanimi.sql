CREATE TABLE [GUSTO00003].[IsaretTanimi] (
  [IsaretTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [sTanimAdi] [varchar](30) NULL DEFAULT (''),
  [pVarsayilan] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [cGrideAlinabilsin] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([IsaretTanimi_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [IsaretTanimiKey]
  ON [GUSTO00003].[IsaretTanimi] ([nModul], [cTur], [sTanimAdi])
  ON [PRIMARY]
GO