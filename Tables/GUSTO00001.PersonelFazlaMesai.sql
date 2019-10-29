CREATE TABLE [GUSTO00001].[PersonelFazlaMesai] (
  [PersonelFazlaMesai_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [cFazlaMesaiTipi] [char](1) NULL DEFAULT (' '),
  [dtTarih] [smalldatetime] NULL,
  [fSure] [real] NULL DEFAULT (0.000000),
  [bMaasaTabiMi] [bit] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelFazlaMesai_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FazlaMesaiPersonelKey]
  ON [GUSTO00001].[PersonelFazlaMesai] ([pPersonel], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO