CREATE TABLE [GUSTO00004].[ButceRevize] (
  [ButceRevize_rowid] [int] IDENTITY,
  [pHareketID] [int] NULL DEFAULT (0),
  [nButceYili] [smallint] NULL DEFAULT (0),
  [nButceAyi] [smallint] NULL DEFAULT (0),
  [nRevizeTipi] [tinyint] NULL DEFAULT (0),
  [dtRevizeTarihi] [smalldatetime] NULL,
  [ldRevizeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pKarsiButceRevize] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ButceRevize_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHareketIDYilAy]
  ON [GUSTO00004].[ButceRevize] ([pHareketID], [nButceYili], [nButceAyi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO