CREATE TABLE [GUSTO00005].[PromosyonSatir] (
  [PromosyonSatir_rowid] [int] IDENTITY,
  [pFiyatListesiSatir] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [cKDVDahilHaric] [char](1) NULL DEFAULT (' '),
  [cKDVAlAlma] [char](1) NULL DEFAULT (' '),
  [ldBrutBirimFiyat] [decimal](22, 9) NULL DEFAULT (0),
  [ldNetBirimFiyat] [decimal](22, 9) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [ldKacBirim] [decimal](22, 2) NULL DEFAULT (0),
  [cOranlama] [char](1) NULL DEFAULT (' '),
  [cYuvarlama] [char](1) NULL DEFAULT (' '),
  [nYuvarlamaHassasiyeti] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PromosyonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PromosyonStokKoduKey]
  ON [GUSTO00005].[PromosyonSatir] ([pFiyatListesiSatir], [pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO