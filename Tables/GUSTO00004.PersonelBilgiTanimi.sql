CREATE TABLE [GUSTO00004].[PersonelBilgiTanimi] (
  [PersonelBilgiTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [sBilgiTuru] [varchar](30) NULL DEFAULT (''),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([PersonelBilgiTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BilgiTuruKey]
  ON [GUSTO00004].[PersonelBilgiTanimi] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO