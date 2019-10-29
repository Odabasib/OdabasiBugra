CREATE TABLE [GUSTO00005].[IskontoOranAralik] (
  [IskontoOranAralik_rowid] [int] IDENTITY,
  [pIskontoTanimi] [int] NOT NULL DEFAULT (0),
  [ldIskontoOraniAltSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoOraniUstSinir] [decimal](22, 2) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskontoOranAralik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIskontoTanimiOranAralik]
  ON [GUSTO00005].[IskontoOranAralik] ([pIskontoTanimi], [ldIskontoOraniAltSinir], [ldIskontoOraniUstSinir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO