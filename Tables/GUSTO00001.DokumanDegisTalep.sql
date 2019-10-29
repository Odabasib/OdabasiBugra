CREATE TABLE [GUSTO00001].[DokumanDegisTalep] (
  [DokumanDegisTalep_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pPersonel] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [cTalepTuru] [char](1) NULL DEFAULT (' '),
  [sDokumanDosyasi] [varchar](255) NULL DEFAULT (''),
  [sDokumanPath] [varchar](255) NULL DEFAULT (''),
  [pDokuman] [int] NULL DEFAULT (0),
  [bIliskili] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](500) NULL DEFAULT (''),
  [bAktarildi] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DokumanDegisTalep_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO