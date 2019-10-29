CREATE TABLE [GUSTO00005].[AlternatifMalzemeler] (
  [AlternatifMalzemeler_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT ('0'),
  [pMalzemeler] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NULL DEFAULT (0),
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
  PRIMARY KEY CLUSTERED ([AlternatifMalzemeler_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [pMalzemeler]
  ON [GUSTO00005].[AlternatifMalzemeler] ([cTur], [pMalzemeler])
  ON [PRIMARY]
GO