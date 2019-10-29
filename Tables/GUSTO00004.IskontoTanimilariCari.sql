CREATE TABLE [GUSTO00004].[IskontoTanimilariCari] (
  [IskontoTanimilariCari_rowid] [int] IDENTITY,
  [pIskontoTanimi] [int] NOT NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('C'),
  [pCari] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskontoTanimilariCari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIskontoTanimi]
  ON [GUSTO00004].[IskontoTanimilariCari] ([pIskontoTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIskontoTanimi_cTur_pCari]
  ON [GUSTO00004].[IskontoTanimilariCari] ([pIskontoTanimi], [cTur], [pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO