CREATE TABLE [GUSTO00003].[uretimKulTanHar] (
  [uretimKulTanHar_rowid] [int] IDENTITY,
  [cHareketTuru] [varchar](2) NULL DEFAULT (''),
  [pHareket] [int] NULL DEFAULT (0),
  [pKulTan] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([uretimKulTanHar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KulTanHarKey]
  ON [GUSTO00003].[uretimKulTanHar] ([pKulTan], [dtTarih], [lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KulTHHareketKey]
  ON [GUSTO00003].[uretimKulTanHar] ([pHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO