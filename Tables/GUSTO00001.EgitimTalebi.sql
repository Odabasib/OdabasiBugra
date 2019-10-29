CREATE TABLE [GUSTO00001].[EgitimTalebi] (
  [EgitimTalebi_rowid] [int] IDENTITY,
  [sSeri] [varchar](10) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sReferansNo] [varchar](50) NULL DEFAULT (''),
  [pEgitimKodu] [int] NULL DEFAULT (0),
  [pEgitimPlan] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [cTalepEden] [char](1) NULL DEFAULT (' '),
  [pTalepEden] [int] NULL DEFAULT (0),
  [dtEnGecTarih] [smalldatetime] NULL,
  [tmEnGecSaat] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](100) NULL DEFAULT (''),
  [sKonu] [varchar](100) NULL DEFAULT (''),
  [nTalepDurumu] [tinyint] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EgitimTalebi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TalepSeriNoKey]
  ON [GUSTO00001].[EgitimTalebi] ([sSeri], [lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO