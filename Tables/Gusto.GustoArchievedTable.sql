CREATE TABLE [Gusto].[GustoArchievedTable] (
  [GustoArchievedTable_rowid] [int] IDENTITY,
  [sTableName] [varchar](50) NOT NULL DEFAULT (''),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [pArchieveRowId] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GustoArchievedTable_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO