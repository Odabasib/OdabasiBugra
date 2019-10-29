CREATE TABLE [GUSTO00003].[MRPParametre] (
  [MRPParametre_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [nStokSeviyeKontrolu] [smallint] NULL DEFAULT (0),
  [nSATalepLotMiktarinaTamamla] [smallint] NULL DEFAULT (0),
  [nStokMiktarKontrolu] [smallint] NULL DEFAULT (0),
  [nOngoruSuresiGun] [smallint] NULL DEFAULT (0),
  [nPlanlamaUzunluguGun] [smallint] NULL DEFAULT (0),
  [nTalepBirlestir] [smallint] NULL DEFAULT (0),
  [nTalepBirlestirmeGun] [smallint] NULL DEFAULT (0),
  [nIsEmriBirlestir] [smallint] NULL DEFAULT (0),
  [nIsEmriBirlestirmeGun] [smallint] NULL DEFAULT (0),
  [nUrunTalepBelgeleri] [smallint] NULL DEFAULT (0),
  [nIsEmriOlusturma] [smallint] NULL DEFAULT (0),
  [nYariMamulPlanlamasi] [smallint] NULL DEFAULT (0),
  [sSeriIsEmri] [varchar](20) NULL DEFAULT (''),
  [sSeriTalep] [varchar](20) NULL DEFAULT (''),
  [sSeriTopluTalep] [varchar](20) NULL DEFAULT (''),
  [sSeriRezervasyon] [varchar](20) NULL DEFAULT (''),
  [pPlanlayanPersonel] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [bTeminSureleriniDikkateAl] [bit] NULL DEFAULT (0),
  [bCizelgelemeYapilsin] [bit] NULL DEFAULT (0),
  [bKapasitePlanla] [bit] NULL DEFAULT (0),
  [nCizelgelemeTuru] [smallint] NULL DEFAULT (0),
  [bCizelgelemeyiIleriyeTekrarla] [bit] NULL DEFAULT (0),
  [bTeminSuresiMesajaEkle] [bit] NULL DEFAULT (0),
  [bOngoruSuresiStokKarti] [bit] NULL DEFAULT (0),
  [nPlanlamaBaslangici] [smallint] NULL DEFAULT (0),
  [sMRPBelgeSeri] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MRPParametre_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00003].[MRPParametre] ([sAd])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00003].[MRPParametre] ([sKod])
  ON [PRIMARY]
GO