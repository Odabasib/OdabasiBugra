CREATE TABLE [GUSTO00004].[ButceDovizKuru] (
  [ButceDovizKuru_rowid] [int] IDENTITY,
  [pDoviz] [int] NULL DEFAULT (0),
  [nDonemYili] [smallint] NULL DEFAULT (0),
  [nDonemAy] [smallint] NULL DEFAULT (0),
  [ldPlanlananDovizKuru] [decimal](22, 2) NULL DEFAULT (0),
  [ldRevizeDovizKuru] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ButceDovizKuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDovizYilAy]
  ON [GUSTO00004].[ButceDovizKuru] ([pDoviz], [nDonemYili], [nDonemAy])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO