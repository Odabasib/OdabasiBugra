CREATE TABLE [GUSTO00001].[AracSefer] (
  [AracSefer_rowid] [int] IDENTITY,
  [sSeri] [varchar](255) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtSefer] [smalldatetime] NULL,
  [pAtayanPersonel] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](255) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracSefer_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO