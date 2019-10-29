CREATE TABLE [GUSTO00001].[IskontoTanimlariStHizSet] (
  [IskontoTanimlariStHizSet_rowid] [int] IDENTITY,
  [pIskontoTanimi] [int] NOT NULL DEFAULT (0),
  [cStokHizmetSet] [char](1) NOT NULL DEFAULT (' '),
  [pStokHizmetSetKodu] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskontoTanimlariStHizSet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IskontoTanimiStok]
  ON [GUSTO00001].[IskontoTanimlariStHizSet] ([pIskontoTanimi], [cStokHizmetSet], [pStokHizmetSetKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIskontoTanimi]
  ON [GUSTO00001].[IskontoTanimlariStHizSet] ([pIskontoTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO