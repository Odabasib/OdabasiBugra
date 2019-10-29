CREATE TABLE [GUSTO00003].[AraciIsyeri] (
  [AraciIsyeri_rowid] [int] IDENTITY,
  [nAraciTuru] [tinyint] NULL DEFAULT (0),
  [pIsyeriId] [int] NOT NULL DEFAULT (0),
  [sAraciAd1] [varchar](50) NOT NULL DEFAULT (''),
  [sAraciAd2] [varchar](50) NULL DEFAULT (''),
  [sCadde] [varchar](50) NULL DEFAULT (''),
  [sEmail] [varchar](50) NULL DEFAULT (''),
  [sFaks] [varchar](50) NULL DEFAULT (''),
  [sAraciIlce] [varchar](50) NULL DEFAULT (''),
  [sAraciIl] [varchar](50) NULL DEFAULT (''),
  [sKapiNo] [varchar](50) NULL DEFAULT (''),
  [sPKodu] [varchar](50) NULL DEFAULT (''),
  [sSemt] [varchar](50) NULL DEFAULT (''),
  [sSokak] [varchar](50) NULL DEFAULT (''),
  [sTCKimlikNo] [varchar](50) NULL DEFAULT (''),
  [sTelKodu] [varchar](50) NULL DEFAULT (''),
  [sTelNo] [varchar](50) NULL DEFAULT (''),
  [sUnvan] [varchar](50) NULL DEFAULT (''),
  [sVergiKimlikNo] [varchar](50) NULL DEFAULT (''),
  [sVergiSicilNo] [varchar](50) NULL DEFAULT (''),
  [sWeb] [varchar](50) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AraciIsyeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAraciAd1]
  ON [GUSTO00003].[AraciIsyeri] ([sAraciAd1], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO