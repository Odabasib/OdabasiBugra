CREATE TABLE [GUSTO00003].[KaliteToplanti] (
  [KaliteToplanti_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sZaman] [varchar](255) NULL DEFAULT (''),
  [cBirimTuru] [char](1) NULL DEFAULT (' '),
  [pBirim] [int] NULL DEFAULT (0),
  [pTemsilci] [int] NULL DEFAULT (0),
  [pBolum] [int] NULL DEFAULT (0),
  [pSoruListesi] [int] NULL DEFAULT (0),
  [sYer] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [text] NULL DEFAULT (''),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteToplanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO