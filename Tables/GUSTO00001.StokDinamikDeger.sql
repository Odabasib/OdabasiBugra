CREATE TABLE [GUSTO00001].[StokDinamikDeger] (
  [StokDinamikDeger_rowid] [int] IDENTITY,
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pStokDinamikOzellik] [int] NOT NULL DEFAULT (0),
  [pDinamikDeger] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDinamikDeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO