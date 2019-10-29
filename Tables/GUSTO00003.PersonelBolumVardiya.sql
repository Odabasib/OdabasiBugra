CREATE TABLE [GUSTO00003].[PersonelBolumVardiya] (
  [PersonelBolumVardiya_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [pBolumKodu] [int] NULL DEFAULT (0),
  [pIsMerkeziKodu] [int] NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [dtBasTarih] [smalldatetime] NOT NULL,
  [pVardiyaKodu] [int] NOT NULL DEFAULT (0),
  [nKayitTipi] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelBolumVardiya_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBolumKodu]
  ON [GUSTO00003].[PersonelBolumVardiya] ([pBolumKodu], [dtBasTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsMerkeziKodu]
  ON [GUSTO00003].[PersonelBolumVardiya] ([pIsMerkeziKodu], [dtBasTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00003].[PersonelBolumVardiya] ([pPersonelKodu], [dtBasTarih], [nKayitTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTezgahKodu]
  ON [GUSTO00003].[PersonelBolumVardiya] ([pTezgahKodu], [dtBasTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO