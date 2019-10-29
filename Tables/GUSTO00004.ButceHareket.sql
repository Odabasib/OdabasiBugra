CREATE TABLE [GUSTO00004].[ButceHareket] (
  [ButceHareket_rowid] [int] IDENTITY,
  [pButce] [int] NULL DEFAULT (0),
  [nButceYili] [smallint] NULL DEFAULT (0),
  [nButceAyi] [int] NULL DEFAULT (0),
  [ldButceTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldRevizeTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldBlokeTutar] [decimal](22, 2) NULL DEFAULT (0),
  [bOnay] [bit] NULL DEFAULT (0),
  [dtOnayTarihi] [smalldatetime] NULL,
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ButceHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pButceYil]
  ON [GUSTO00004].[ButceHareket] ([pButce], [nButceYili])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO