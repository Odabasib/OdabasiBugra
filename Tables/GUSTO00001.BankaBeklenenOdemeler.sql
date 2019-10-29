CREATE TABLE [GUSTO00001].[BankaBeklenenOdemeler] (
  [BankaBeklenenOdemeler_rowid] [int] IDENTITY,
  [pBankaHesabi] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [nSira] [int] NULL DEFAULT (0),
  [cOdemeTahsilat] [char](1) NULL DEFAULT (' '),
  [cTur] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pGerceklesenHareket] [int] NULL DEFAULT (0),
  [pRepoHareketi] [int] NULL DEFAULT (0),
  [pBagliBeklenenOdeme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaBeklenenOdemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BankaTarihSira]
  ON [GUSTO00001].[BankaBeklenenOdemeler] ([pBankaHesabi], [dtTarih], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GercekTarihBankaSira]
  ON [GUSTO00001].[BankaBeklenenOdemeler] ([pGerceklesenHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pRepoHareketi]
  ON [GUSTO00001].[BankaBeklenenOdemeler] ([pRepoHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO