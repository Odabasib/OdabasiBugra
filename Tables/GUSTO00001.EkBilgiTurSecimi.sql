CREATE TABLE [GUSTO00001].[EkBilgiTurSecimi] (
  [EkBilgiTurSecimi_rowid] [int] IDENTITY,
  [cTanimTuru] [char](1) NOT NULL DEFAULT (' '),
  [pEkBilgiTanimi] [int] NOT NULL DEFAULT (0),
  [nAltTur] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkBilgiTurSecimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TanimAltTur]
  ON [GUSTO00001].[EkBilgiTurSecimi] ([pEkBilgiTanimi], [nAltTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO