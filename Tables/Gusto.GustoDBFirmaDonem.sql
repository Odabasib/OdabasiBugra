CREATE TABLE [Gusto].[GustoDBFirmaDonem] (
  [GustoDBFirmaDonem_rowid] [int] IDENTITY,
  [pGustoDB] [int] NOT NULL DEFAULT (0),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoDBFirmaDonem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GustoFirmaDonem]
  ON [Gusto].[GustoDBFirmaDonem] ([pGustoDB], [pFirma], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO