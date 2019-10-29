CREATE TABLE [GUSTO00005].[KampanyaPromosyon] (
  [KampanyaPromosyon_rowid] [int] IDENTITY,
  [pKampanyaTanim] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22) NULL DEFAULT (0),
  [bFiyatListesindenAl] [bit] NULL DEFAULT (0),
  [ldMiktar] [decimal](22) NULL DEFAULT (0),
  [nKDVDahilHaric] [smallint] NULL DEFAULT (0),
  [ldKDV] [decimal](22) NULL DEFAULT (0),
  [ldIskonto] [decimal](22) NULL DEFAULT (0),
  [bZorunlu] [bit] NULL DEFAULT (0),
  [pAlternatifStok] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KampanyaPromosyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO