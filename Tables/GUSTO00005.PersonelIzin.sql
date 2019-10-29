CREATE TABLE [GUSTO00005].[PersonelIzin] (
  [PersonelIzin_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [cIzinTipi] [char](1) NULL DEFAULT (' '),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [fSure] [real] NULL DEFAULT (0.000000),
  [cSureTipi] [char](1) NULL DEFAULT (' '),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nEksikGunNedeni] [tinyint] NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [lSeriNo] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelIzin_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IzinPersonelKey]
  ON [GUSTO00005].[PersonelIzin] ([pPersonel], [dtBaslamaTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00005].[PersonelIzin] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO