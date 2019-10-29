CREATE TABLE [GUSTO00005].[BankaCekSerileri] (
  [BankaCekSerileri_rowid] [int] IDENTITY,
  [pBanka] [int] NULL DEFAULT (0),
  [sSeriAdi] [varchar](20) NULL DEFAULT (''),
  [dtAlinis] [smalldatetime] NULL,
  [nBaslangic] [int] NULL DEFAULT (0),
  [nBitis] [int] NULL DEFAULT (0),
  [nSonKullanilan] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaCekSerileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BankaCekTarihKey]
  ON [GUSTO00005].[BankaCekSerileri] ([pBanka], [dtAlinis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO