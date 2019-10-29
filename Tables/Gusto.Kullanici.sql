CREATE TABLE [Gusto].[Kullanici] (
  [Kullanici_rowid] [int] IDENTITY,
  [Adi] [varchar](20) NULL DEFAULT (''),
  [EMail] [varchar](60) NULL DEFAULT (''),
  [nParola1] [int] NULL DEFAULT (0),
  [nParola2] [int] NULL DEFAULT (0),
  [nParola3] [int] NULL DEFAULT (0),
  [nParola4] [int] NULL DEFAULT (0),
  [UzunAdi] [varchar](30) NULL DEFAULT (''),
  [nDil] [smallint] NULL DEFAULT (0),
  [bSadeceGustoMenusu] [bit] NULL DEFAULT (0),
  [bKullaniciAktif] [bit] NULL DEFAULT (0),
  [dtDogumTarihi] [smalldatetime] NULL,
  [dtKayitTarihi] [smalldatetime] NULL,
  [dtKontrolTarihi] [smalldatetime] NULL,
  [sWinUserName] [varchar](31) NULL DEFAULT (''),
  [sKey] [varchar](256) NULL DEFAULT (''),
  [UserImage] [image] NULL DEFAULT (''),
  [nOlayYonetimi] [int] NULL DEFAULT (1),
  [sEDefterAdi] [varchar](31) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([Kullanici_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [Adi]
  ON [Gusto].[Kullanici] ([Adi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UzunAdi]
  ON [Gusto].[Kullanici] ([UzunAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO