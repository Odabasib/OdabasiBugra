﻿CREATE TABLE [GUSTO00003].[stokKulTanKod] (
  [stokKulTanKod_rowid] [int] IDENTITY,
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
  PRIMARY KEY CLUSTERED ([stokKulTanKod_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KTKKodKey]
  ON [GUSTO00003].[stokKulTanKod] ([pKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KTKKultanKey]
  ON [GUSTO00003].[stokKulTanKod] ([pKulTan], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO