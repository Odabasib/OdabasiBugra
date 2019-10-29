CREATE TABLE [GUSTO00004].[HizmetKodu] (
  [HizmetKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sKisaAdi] [varchar](30) NULL DEFAULT (''),
  [pHizmetDetayi] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [cIzlemeKodlariVarmi] [char](1) NULL DEFAULT (' '),
  [bIzlemeKoduZorunlu] [bit] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HizmetKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00004].[HizmetKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00004].[HizmetKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00004].[HizmetKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00004].[HizmetKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO