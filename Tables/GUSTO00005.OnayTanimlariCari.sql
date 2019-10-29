CREATE TABLE [GUSTO00005].[OnayTanimlariCari] (
  [OnayTanimlariCari_rowid] [int] IDENTITY,
  [pOnayTanimi] [int] NOT NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('C'),
  [pCari] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OnayTanimlariCari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOnayTanimi]
  ON [GUSTO00005].[OnayTanimlariCari] ([pOnayTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pOnayTanimi_cTur_pCari]
  ON [GUSTO00005].[OnayTanimlariCari] ([pOnayTanimi], [cTur], [pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO