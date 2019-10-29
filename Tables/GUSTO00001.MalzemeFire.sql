CREATE TABLE [GUSTO00001].[MalzemeFire] (
  [MalzemeFire_rowid] [int] IDENTITY,
  [pRotaMalzeme] [int] NOT NULL DEFAULT (0),
  [pRotaSatirDetay] [int] NULL DEFAULT (0),
  [nFireOranMiktar] [tinyint] NOT NULL DEFAULT (0),
  [ldFire] [decimal](22, 6) NOT NULL DEFAULT (0),
  [nFireYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MalzemeFire_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [MalzemeOperasyonKey]
  ON [GUSTO00001].[MalzemeFire] ([pRotaMalzeme], [pRotaSatirDetay])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO