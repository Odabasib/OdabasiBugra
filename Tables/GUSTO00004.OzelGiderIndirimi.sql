CREATE TABLE [GUSTO00004].[OzelGiderIndirimi] (
  [OzelGiderIndirimi_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [smallint] NOT NULL DEFAULT (0),
  [ldToplamMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [ldBelgeToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldIadeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirimTutari1] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirimTutari2] [decimal](22, 2) NULL DEFAULT (0),
  [ldIkinciMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [ldIkinciVergi] [decimal](22, 2) NULL DEFAULT (0),
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelGiderIndirimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [PersonelYilKey]
  ON [GUSTO00004].[OzelGiderIndirimi] ([pPersonel], [nYil])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO