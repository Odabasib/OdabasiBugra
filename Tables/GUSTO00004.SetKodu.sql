CREATE TABLE [GUSTO00004].[SetKodu] (
  [SetKodu_rowid] [int] IDENTITY,
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [ldSetFiyati] [decimal](22, 2) NULL DEFAULT (0),
  [ldRezervasyonMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [sBarKod] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SetKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SetAdKod]
  ON [GUSTO00004].[SetKodu] ([sAd], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SetKodAd]
  ON [GUSTO00004].[SetKodu] ([sKod], [sAd], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKod]
  ON [GUSTO00004].[SetKodu] ([pUstKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO