CREATE TABLE [GUSTO00001].[uretimKulTanKod] (
  [uretimKulTanKod_rowid] [int] IDENTITY,
  [cKodTuru] [varchar](2) NULL DEFAULT (''),
  [pKod] [int] NULL DEFAULT (0),
  [pKulTan] [int] NULL DEFAULT (0),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([uretimKulTanKod_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KTKKodKey]
  ON [GUSTO00001].[uretimKulTanKod] ([pKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KTKKultanKey]
  ON [GUSTO00001].[uretimKulTanKod] ([pKulTan], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO