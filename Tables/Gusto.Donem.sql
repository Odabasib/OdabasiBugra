CREATE TABLE [Gusto].[Donem] (
  [Donem_rowid] [int] IDENTITY,
  [Adi] [varchar](20) NULL DEFAULT (''),
  [dtBasTarih] [smalldatetime] NOT NULL,
  [dtBitTarih] [smalldatetime] NOT NULL,
  [pFirma] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Donem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [FirmaDonemKey]
  ON [Gusto].[Donem] ([pFirma], [Adi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO