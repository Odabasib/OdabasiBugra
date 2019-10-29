CREATE TABLE [GUSTO00001].[AracRotaTanimi] (
  [AracRotaTanimi_rowid] [int] IDENTITY,
  [sCikisNoktasi] [varchar](255) NULL DEFAULT (''),
  [sVarisNoktasi] [varchar](255) NULL DEFAULT (''),
  [ldMesafe] [decimal](22, 6) NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracRotaTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO