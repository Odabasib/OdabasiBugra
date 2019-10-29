CREATE TABLE [GUSTO00005].[HareketSatirFAIskonto] (
  [HareketSatirFAIskonto_rowid] [int] IDENTITY,
  [pStokHareket] [int] NULL DEFAULT (0),
  [pFAIskonto] [int] NULL DEFAULT (0),
  [ldFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HareketSatirFAIskonto_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pFAIskonto]
  ON [GUSTO00005].[HareketSatirFAIskonto] ([pFAIskonto])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareket]
  ON [GUSTO00005].[HareketSatirFAIskonto] ([pStokHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO