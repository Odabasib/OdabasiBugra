CREATE TABLE [GUSTO00005].[GorevYonetimi] (
  [GorevYonetimi_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pAtayanPersonel] [int] NULL DEFAULT (0),
  [pBolum] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [sKonu] [varchar](100) NULL DEFAULT (''),
  [sYer] [varchar](100) NULL DEFAULT (''),
  [sNotlar] [text] NULL DEFAULT (''),
  [bAnimsatici] [bit] NULL DEFAULT (0),
  [nAnimsaticiSuresi] [smallint] NULL DEFAULT (0),
  [cPersonelBolum] [char](1) NULL DEFAULT (' '),
  [pPersonelBolum] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [cCariAktif] [char](1) NULL DEFAULT (' '),
  [nMesgulDurumu] [smallint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GorevYonetimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO