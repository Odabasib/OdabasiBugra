CREATE TABLE [GUSTO00003].[EB_SQLTanimlari] (
  [EB_SQLTanimlari_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](1024) NULL DEFAULT (''),
  [sTanimAciklama] [varchar](2000) NULL DEFAULT (''),
  [nBeyannameTipi] [int] NULL DEFAULT (0),
  [nBeyannameListeTipi] [int] NULL DEFAULT (0),
  [pFirma] [int] NULL DEFAULT (0),
  [sSQL] [varchar](2000) NULL DEFAULT (''),
  [msGrid] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EB_SQLTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO