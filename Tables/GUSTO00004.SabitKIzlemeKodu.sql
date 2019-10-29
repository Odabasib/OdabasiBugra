CREATE TABLE [GUSTO00004].[SabitKIzlemeKodu] (
  [SabitKIzlemeKodu_rowid] [int] IDENTITY,
  [pSabitKKodu] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sKisaAdi] [varchar](30) NULL DEFAULT (''),
  [pDetay] [int] NULL DEFAULT (0),
  [cStoktaVarMi] [char](1) NULL DEFAULT (' '),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pBagliOlduguSKAyrintiKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bTFRSyeTabimi] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKIzlemeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KisaAdKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [sKisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KodKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBagliOlduguSKAyrintiKodu]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pBagliOlduguSKAyrintiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKod]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDurumuKodKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [cStoktaVarMi], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKisaAdKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [pUstKod], [sKisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00004].[SabitKIzlemeKodu] ([pSabitKKodu], [pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO