CREATE TABLE [GUSTO00003].[IsEmriUrunler] (
  [IsEmriUrunler_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [ldRzvMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldRzvMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldRzvMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [ldSabitUretimSure] [decimal](22, 2) NULL DEFAULT (0),
  [nSabitUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldDegiskenUretimSure] [decimal](22, 2) NULL DEFAULT (0),
  [nDegiskenUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [nDepoIsEmri] [tinyint] NULL DEFAULT (0),
  [pDepoKodu] [int] NULL DEFAULT (0),
  [ldFormulDegiskeni1] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni2] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni3] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni4] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni5] [decimal](22, 2) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  PRIMARY KEY CLUSTERED ([IsEmriUrunler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmriUrunler] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00003].[IsEmriUrunler] ([pStokKodu], [cStokHizmet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO