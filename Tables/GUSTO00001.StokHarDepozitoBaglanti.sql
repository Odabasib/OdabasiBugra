CREATE TABLE [GUSTO00001].[StokHarDepozitoBaglanti] (
  [StokHarDepozitoBaglanti_rowid] [int] IDENTITY,
  [pUrunHareket] [int] NULL DEFAULT (0),
  [pDepozitoHareket] [int] NULL DEFAULT (0),
  [bZorunlu] [bit] NULL DEFAULT (0),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarDepozitoBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UrunDepozitoKey]
  ON [GUSTO00001].[StokHarDepozitoBaglanti] ([pUrunHareket], [pDepozitoHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO