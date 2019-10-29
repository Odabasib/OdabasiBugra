CREATE TABLE [GUSTO00003].[Malzemeler] (
  [Malzemeler_rowid] [int] IDENTITY,
  [pUrunAgaciKodu] [int] NULL DEFAULT (0),
  [pUrunler] [int] NULL DEFAULT (0),
  [sKonumKodu] [varchar](20) NULL DEFAULT (''),
  [sKonumAdi] [varchar](60) NULL DEFAULT (''),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [ldKullanimMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [dtGecerlilikBaslama] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [nStokMiktarKontrolu] [int] NULL DEFAULT (0),
  [bOtomatikCekim] [bit] NULL DEFAULT (0),
  [bIlkIslemdeOtomatikCekim] [bit] NULL DEFAULT (0),
  [pDepoKodu] [int] NULL DEFAULT (0),
  [bGenelGider] [bit] NULL DEFAULT (0),
  [nBirimMaliyet] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  PRIMARY KEY CLUSTERED ([Malzemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00003].[Malzemeler] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunAgaciKodu]
  ON [GUSTO00003].[Malzemeler] ([pUrunAgaciKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunAgaciUrunler]
  ON [GUSTO00003].[Malzemeler] ([pUrunAgaciKodu], [pUrunler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO