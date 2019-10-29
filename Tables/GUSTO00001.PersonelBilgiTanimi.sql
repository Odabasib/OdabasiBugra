CREATE TABLE [GUSTO00001].[PersonelBilgiTanimi] (
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
  ON [GUSTO00001].[PersonelBilgiTanimi] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO