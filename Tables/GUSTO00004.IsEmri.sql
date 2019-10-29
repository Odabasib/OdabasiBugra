CREATE TABLE [GUSTO00004].[IsEmri] (
  [IsEmri_rowid] [int] IDENTITY,
  [dtIsEmriTarihi] [smalldatetime] NOT NULL,
  [sIsEmriSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nIsEmriNo] [int] NOT NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [nIsemriTuru] [tinyint] NOT NULL DEFAULT (0),
  [pUrunAgaciKodu] [int] NULL DEFAULT (0),
  [pRotaBaslik] [int] NULL DEFAULT (0),
  [ldPlanlananIsEmriMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtPlanlananBaslamaTarihi] [smalldatetime] NULL,
  [dtPlanlananBitisTarihi] [smalldatetime] NULL,
  [tmPlanlananBaslamaZamani] [int] NULL DEFAULT (0),
  [tmPlanlananBitisZamani] [int] NULL DEFAULT (0),
  [nIsemriDurum] [tinyint] NULL DEFAULT (0),
  [pPlanlayanPersonel] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pOncelik] [int] NULL DEFAULT (0),
  [nCizelgelemeKriteri] [tinyint] NOT NULL DEFAULT (0),
  [dtEnGecTamamlanmaTarihi] [smalldatetime] NULL,
  [nLevel] [smallint] NULL DEFAULT (1),
  [pMRPBaslik] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmri_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [nLevel]
  ON [GUSTO00004].[IsEmri] ([nLevel])
  ON [PRIMARY]
GO

CREATE INDEX [pMRPBaslik]
  ON [GUSTO00004].[IsEmri] ([pMRPBaslik])
  ON [PRIMARY]
GO

CREATE INDEX [pUrunAgaciKodu]
  ON [GUSTO00004].[IsEmri] ([pUrunAgaciKodu])
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00004].[IsEmri] ([nIsEmriNo])
  ON [PRIMARY]
GO

CREATE INDEX [TarihSeriKey]
  ON [GUSTO00004].[IsEmri] ([dtIsEmriTarihi])
  ON [PRIMARY]
GO