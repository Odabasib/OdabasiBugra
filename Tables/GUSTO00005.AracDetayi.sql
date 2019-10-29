CREATE TABLE [GUSTO00005].[AracDetayi] (
  [AracDetayi_rowid] [int] IDENTITY,
  [pAracKodu] [int] NULL DEFAULT (0),
  [dtTescil] [smalldatetime] NULL,
  [dtFatura] [smalldatetime] NULL,
  [dtTrafigeCikis] [smalldatetime] NULL,
  [sTescilNo] [varchar](255) NULL DEFAULT (''),
  [sIlIlce] [varchar](255) NULL DEFAULT (''),
  [sRengi] [varchar](255) NULL DEFAULT (''),
  [sCinsi] [varchar](255) NULL DEFAULT (''),
  [sTipi] [varchar](255) NULL DEFAULT (''),
  [sMotorNo] [varchar](255) NULL DEFAULT (''),
  [sSasiNo] [varchar](255) NULL DEFAULT (''),
  [nMotorGucu] [int] NULL DEFAULT (0),
  [ldSilindirHacmi] [decimal](22, 6) NULL DEFAULT (0),
  [ldNetAgirligi] [decimal](22, 6) NULL DEFAULT (0),
  [cImalatYeri] [char](1) NULL DEFAULT (' '),
  [sSahipAdi] [varchar](255) NULL DEFAULT (''),
  [sSahipAdresi] [varchar](255) NULL DEFAULT (''),
  [sSahipTelNo] [varchar](20) NULL DEFAULT (''),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [nYakitAlimTurSecim] [smallint] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT (' '),
  [pStokHizmet] [int] NULL DEFAULT (0),
  [pGGYeriKodu] [int] NULL DEFAULT (0),
  [pGGTuruKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pAracKodu]
  ON [GUSTO00005].[AracDetayi] ([pAracKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO