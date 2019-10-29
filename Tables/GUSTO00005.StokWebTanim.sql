CREATE TABLE [GUSTO00005].[StokWebTanim] (
  [StokWebTanim_rowid] [int] IDENTITY,
  [sWebAnahtar] [varchar](30) NULL DEFAULT (''),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sKisaAdi] [varchar](30) NULL DEFAULT (''),
  [pStokKodu] [int] NULL DEFAULT (0),
  [bGorunsun] [bit] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sResimPath] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([StokWebTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00005].[StokWebTanim] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00005].[StokWebTanim] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKoduKey]
  ON [GUSTO00005].[StokWebTanim] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO