CREATE TABLE [GUSTO00005].[OperasyonUrun] (
  [OperasyonUrun_rowid] [int] IDENTITY,
  [pUrunler] [int] NULL DEFAULT (0),
  [pRotaSatir] [int] NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [nFireOranMiktar] [tinyint] NULL DEFAULT (0),
  [ldFire] [decimal](22, 6) NULL DEFAULT (0),
  [nFireYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonUrun_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [RotaSatirUrunlerKey]
  ON [GUSTO00005].[OperasyonUrun] ([pRotaSatir], [pUrunler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO