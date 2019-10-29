CREATE TABLE [GUSTO00001].[StokHarEnflasyonFarki] (
  [StokHarEnflasyonFarki_rowid] [int] IDENTITY,
  [pDonem] [int] NULL DEFAULT (0),
  [pStokHareket] [int] NULL DEFAULT (0),
  [dtDuzeltmeTarihi] [smalldatetime] NULL,
  [ldFark] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHarEnflasyonFarki_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Donem_StokHareket]
  ON [GUSTO00001].[StokHarEnflasyonFarki] ([pDonem], [pStokHareket], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO