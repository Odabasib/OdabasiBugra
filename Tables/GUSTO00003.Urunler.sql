CREATE TABLE [GUSTO00003].[Urunler] (
  [Urunler_rowid] [int] IDENTITY,
  [pUrunAgaciKodu] [int] NOT NULL DEFAULT (0),
  [bVarsayilanUrunAgaci] [bit] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [ldSabitUretimSure] [decimal](22, 2) NULL DEFAULT (0),
  [nSabitUretimSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldDegiskenUretimSure] [decimal](22, 2) NULL DEFAULT (0),
  [nDegiskenUretimSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [nDepoIsemri] [int] NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [ldMinUretilmeSeviyesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinUretilmeSeviyesi2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinUretilmeSeviyesi3] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinSiparisMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinSiparisMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinSiparisMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [ldOptSiparisMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldOptSiparisMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldOptSiparisMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  PRIMARY KEY CLUSTERED ([Urunler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00003].[Urunler] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunAgaciKodu]
  ON [GUSTO00003].[Urunler] ([pUrunAgaciKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO