CREATE TABLE [GUSTO00001].[StokHarIzlmAckSat] (
  [StokHarIzlmAckSat_rowid] [int] IDENTITY,
  [nSiraNo] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](100) NOT NULL DEFAULT (''),
  [pAciklamaBaslik] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarIzlmAckSat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO