CREATE TABLE [GUSTO00003].[KampanyaliStok] (
  [KampanyaliStok_rowid] [int] IDENTITY,
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pKampanyaTanim] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KampanyaliStok_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO