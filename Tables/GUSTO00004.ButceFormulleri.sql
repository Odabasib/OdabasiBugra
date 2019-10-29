CREATE TABLE [GUSTO00004].[ButceFormulleri] (
  [ButceFormulleri_rowid] [int] IDENTITY,
  [pButceId] [int] NULL DEFAULT (0),
  [nIslem] [tinyint] NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [pGelirGiderYeri] [int] NULL DEFAULT (0),
  [pGelirGiderTuru] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT ('M'),
  [fOran] [real] NULL DEFAULT (0.000000),
  PRIMARY KEY CLUSTERED ([ButceFormulleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pButceId]
  ON [GUSTO00004].[ButceFormulleri] ([pButceId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO