CREATE TABLE [GUSTO00005].[IskontoTanimlariYetki] (
  [IskontoTanimlariYetki_rowid] [int] IDENTITY,
  [pIskontoTanimi] [int] NOT NULL DEFAULT (0),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskontoTanimlariYetki_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIskontoTanimi]
  ON [GUSTO00005].[IskontoTanimlariYetki] ([pIskontoTanimi], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO