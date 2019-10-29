CREATE TABLE [GUSTO00003].[OlayTanimi] (
  [OlayTanimi_rowid] [int] IDENTITY,
  [nModulNo] [smallint] NULL DEFAULT (0),
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sMesajMetni] [varchar](2048) NULL DEFAULT (''),
  [pAliciKullanici] [int] NULL DEFAULT (0),
  [pAliciYetkiGrubu] [int] NULL DEFAULT (0),
  [bKalici] [bit] NULL DEFAULT (0),
  [bAktif] [bit] NULL DEFAULT (0),
  [nArtisAzalis] [tinyint] NULL DEFAULT (0),
  [nKosulTipi] [smallint] NULL DEFAULT (0),
  [pParametre1] [int] NULL DEFAULT (0),
  [pParametre2] [int] NULL DEFAULT (0),
  [pParametre3] [int] NULL DEFAULT (0),
  [ldParametre1] [decimal](22, 2) NULL DEFAULT (0),
  [ldParametre2] [decimal](22, 2) NULL DEFAULT (0),
  [ldParametre3] [decimal](22, 2) NULL DEFAULT (0),
  [nParametre1] [int] NULL DEFAULT (0),
  [nParametre2] [int] NULL DEFAULT (0),
  [nParametre3] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OlayTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nModulNo]
  ON [GUSTO00003].[OlayTanimi] ([nModulNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO