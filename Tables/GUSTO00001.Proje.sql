CREATE TABLE [GUSTO00001].[Proje] (
  [Proje_rowid] [int] IDENTITY,
  [dtProjeTarihi] [smalldatetime] NOT NULL,
  [sProjeSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nProjeNo] [int] NOT NULL DEFAULT (0),
  [nOffsetWeb] [int] NOT NULL DEFAULT (0),
  [nCariTuru] [int] NOT NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [dtTeslimTarihi] [smalldatetime] NULL,
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nProjeDurum] [tinyint] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [ldToplamMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [ldKarOrani] [decimal](22, 6) NULL DEFAULT (0),
  [dtTerminTarihi] [smalldatetime] NULL,
  [pPlanlayanPersonel] [int] NULL DEFAULT (0),
  [pPlanlayanBolum] [int] NULL DEFAULT (0),
  [pSablon] [int] NULL DEFAULT (0),
  [sGenelNot] [varchar](200) NULL DEFAULT (''),
  [dtPlanlananBaslamaTarihi] [smalldatetime] NULL,
  [dtPlanlananBitisTarihi] [smalldatetime] NULL,
  [tmPlanlananBaslamaZamani] [int] NULL DEFAULT (0),
  [tmPlanlananBitisZamani] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Proje_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00001].[Proje] ([nProjeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihSeriKey]
  ON [GUSTO00001].[Proje] ([dtProjeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO