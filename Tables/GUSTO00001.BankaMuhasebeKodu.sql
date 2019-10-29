CREATE TABLE [GUSTO00001].[BankaMuhasebeKodu] (
  [BankaMuhasebeKodu_rowid] [int] IDENTITY,
  [pBankaKodu] [int] NULL DEFAULT (0),
  [pBankaMuhasebeKodu] [int] NULL DEFAULT (0),
  [nBankaMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BKMuhKodTanimKey]
  ON [GUSTO00001].[BankaMuhasebeKodu] ([pBankaKodu], [nBankaMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO