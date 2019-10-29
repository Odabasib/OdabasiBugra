CREATE TABLE [GUSTO00003].[StokDinamikDegerKisit] (
  [StokDinamikDegerKisit_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pStokDinamikOzellik] [int] NOT NULL DEFAULT (0),
  [pDinamikDeger] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDinamikDegerKisit_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO