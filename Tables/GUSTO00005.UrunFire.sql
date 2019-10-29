CREATE TABLE [GUSTO00005].[UrunFire] (
  [UrunFire_rowid] [int] IDENTITY,
  [pUrunler] [int] NULL DEFAULT (0),
  [pRotaSatir] [int] NULL DEFAULT (0),
  [pRotaSatirDetay] [int] NULL DEFAULT (0),
  [nFireOranMiktar] [tinyint] NULL DEFAULT (0),
  [ldFire] [decimal](22, 6) NULL DEFAULT (0),
  [nFireYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UrunFire_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UrunOperasyonKey]
  ON [GUSTO00005].[UrunFire] ([pUrunler], [pRotaSatir], [pRotaSatirDetay])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO