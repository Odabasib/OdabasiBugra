CREATE TABLE [GUSTO00005].[BankaSubeleri] (
  [BankaSubeleri_rowid] [int] IDENTITY,
  [sKod] [varchar](30) NULL DEFAULT (''),
  [sAd] [varchar](512) NULL DEFAULT (''),
  [sSubeIlKodu] [varchar](16) NULL DEFAULT (''),
  [sSehir] [varchar](64) NULL DEFAULT (''),
  [sSubeIlceKodu] [varchar](16) NULL DEFAULT (''),
  [sSubeIlceAdi] [varchar](64) NULL DEFAULT (''),
  [sSubeAdres] [varchar](1024) NULL DEFAULT (''),
  [sSubeTelefon] [varchar](32) NULL DEFAULT (''),
  [sSubeFaks] [varchar](32) NULL DEFAULT (''),
  [sSubeMail] [varchar](64) NULL DEFAULT (''),
  [sKodDetay] [varchar](30) NULL DEFAULT (''),
  [dtSonIslem] [smalldatetime] NULL,
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaSubeleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00005].[BankaSubeleri] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00005].[BankaSubeleri] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO