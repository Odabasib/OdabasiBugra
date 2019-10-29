CREATE TABLE [Gusto].[Firma] (
  [Firma_rowid] [int] IDENTITY,
  [KisaAdi] [varchar](20) NOT NULL DEFAULT (''),
  [Adi] [varchar](120) NOT NULL DEFAULT (''),
  [Adresi] [varchar](240) NULL DEFAULT (''),
  [Email] [varchar](80) NULL DEFAULT (''),
  [Faks] [varchar](20) NULL DEFAULT (''),
  [PostaKodu] [varchar](10) NULL DEFAULT (''),
  [Sehir] [varchar](20) NULL DEFAULT (''),
  [Telefon1] [varchar](20) NULL DEFAULT (''),
  [Telefon2] [varchar](20) NULL DEFAULT (''),
  [Telefon3] [varchar](20) NULL DEFAULT (''),
  [Teleks] [varchar](20) NULL DEFAULT (''),
  [VergiDairesi] [varchar](30) NULL DEFAULT (''),
  [VergiNumarasi] [varchar](30) NULL DEFAULT (''),
  [WebAdresi] [varchar](250) NULL DEFAULT (''),
  [bBasarili] [bit] NULL DEFAULT (0),
  [sVersiyon] [varchar](11) NULL DEFAULT (''),
  [nParola1] [int] NULL DEFAULT (0),
  [nParola2] [int] NULL DEFAULT (0),
  [nParola3] [int] NULL DEFAULT (0),
  [nParola4] [int] NULL DEFAULT (0),
  [bLikomLogo] [bit] NULL DEFAULT (0),
  [sVizyon] [text] NULL DEFAULT (''),
  [sMisyon] [text] NULL DEFAULT (''),
  [bKonsolideFirma] [bit] NULL DEFAULT (0),
  [bEFaturaKullanicisi] [bit] NULL DEFAULT (0),
  [bEDefterKullanicisi] [bit] NULL DEFAULT (1),
  [bEArsivKullanicisi] [bit] NULL DEFAULT (0),
  [bEIrsaliyeKullanicisi] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Firma_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KisaAdi]
  ON [Gusto].[Firma] ([KisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO