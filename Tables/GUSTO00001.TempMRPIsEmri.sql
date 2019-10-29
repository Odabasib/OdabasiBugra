CREATE TABLE [GUSTO00001].[TempMRPIsEmri] (
  [TempMRPIsEmriId] [int] NOT NULL,
  [pGustoKullanici] [int] NOT NULL
)
ON [PRIMARY]
GO

CREATE INDEX [IX_TempMRPIsEmri_Complex]
  ON [GUSTO00001].[TempMRPIsEmri] ([TempMRPIsEmriId], [pGustoKullanici])
  ON [PRIMARY]
GO

CREATE INDEX [IX_TempMRPIsEmri_pGustoKullanici]
  ON [GUSTO00001].[TempMRPIsEmri] ([TempMRPIsEmriId])
  ON [PRIMARY]
GO

CREATE INDEX [IX_TempMRPIsEmri_pIsEmri]
  ON [GUSTO00001].[TempMRPIsEmri] ([TempMRPIsEmriId])
  ON [PRIMARY]
GO