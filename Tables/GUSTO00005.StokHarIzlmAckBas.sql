CREATE TABLE [GUSTO00005].[StokHarIzlmAckBas] (
  [StokHarIzlmAckBas_rowid] [int] IDENTITY,
  [pBaslik] [int] NOT NULL DEFAULT (0),
  [nUsedFrom] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarIzlmAckBas_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO