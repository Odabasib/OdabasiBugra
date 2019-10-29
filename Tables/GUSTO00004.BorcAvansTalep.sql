CREATE TABLE [GUSTO00004].[BorcAvansTalep] (
  [BorcAvansTalep_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pPersonel] [int] NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldOnayliTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [text] NULL DEFAULT (''),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BorcAvansTalep_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO