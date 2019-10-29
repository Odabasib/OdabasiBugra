CREATE TABLE [GUSTO00004].[TezgahSinifiKodu] (
  [TezgahSinifiKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [ldBrmSureBakimOnarimMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimSureAmortismanMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimSureKiraMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimSureDegiskenMaliyeti1] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimSureDegiskenMaliyeti2] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimSureDegiskenMaliyeti3] [decimal](22, 2) NULL DEFAULT (0),
  [sDegiskenMaliyetAdi1] [varchar](30) NULL DEFAULT (''),
  [sDegiskenMaliyetAdi2] [varchar](30) NULL DEFAULT (''),
  [sDegiskenMaliyetAdi3] [varchar](30) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TezgahSinifiKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00004].[TezgahSinifiKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00004].[TezgahSinifiKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00004].[TezgahSinifiKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00004].[TezgahSinifiKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO