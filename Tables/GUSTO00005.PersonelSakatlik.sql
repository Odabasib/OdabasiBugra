CREATE TABLE [GUSTO00005].[PersonelSakatlik] (
  [PersonelSakatlik_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pSakatlik] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelSakatlik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersTarihKey]
  ON [GUSTO00005].[PersonelSakatlik] ([pPersonelKodu], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO