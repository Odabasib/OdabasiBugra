CREATE TABLE [GUSTO00005].[AracKodu] (
  [AracKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [sPlaka] [varchar](255) NOT NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [smallint] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [cAracTuru] [char](1) NULL DEFAULT (' '),
  [cAracGrubu] [char](1) NULL DEFAULT (' '),
  [sMarkaModel] [varchar](255) NULL DEFAULT (''),
  [nModelYili] [smallint] NULL DEFAULT (0),
  [lAracKm] [int] NULL DEFAULT (0),
  [cAracDurumu] [char](1) NULL DEFAULT (' '),
  [lCalismaSaati] [int] NULL DEFAULT (0),
  [ldAracKapasite] [decimal](22, 6) NULL DEFAULT (0),
  [cKapasiteBirimi] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00005].[AracKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00005].[AracKodu] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAdKey]
  ON [GUSTO00005].[AracKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKodKey]
  ON [GUSTO00005].[AracKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO