CREATE TABLE [Gusto].[GirisKalite] (
  [Rowid] [int] IDENTITY,
  [pStokHareket] [int] NULL,
  [pIadeStokHareket] [int] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO