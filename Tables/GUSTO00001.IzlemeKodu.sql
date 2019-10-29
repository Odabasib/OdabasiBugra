CREATE TABLE [GUSTO00001].[IzlemeKodu] (
  [IzlemeKodu_rowid] [int] IDENTITY,
  [cStokDemirbas] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [pDetay] [int] NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [cStoktaVarMi] [char](1) NULL DEFAULT (' '),
  [pUstKod] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IzlemeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [pStokKodu], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KodKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [pStokKodu], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SadeceKodKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDurumuKodKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [pStokKodu], [cStoktaVarMi], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [pStokKodu], [pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00001].[IzlemeKodu] ([cStokDemirbas], [pStokKodu], [pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO