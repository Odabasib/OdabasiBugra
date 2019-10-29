CREATE TABLE [GUSTO00004].[AracSigortaKasko] (
  [AracSigortaKasko_rowid] [int] IDENTITY,
  [pAracKodu] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [sPoliceNo] [varchar](255) NULL DEFAULT (''),
  [sAcenteNo] [varchar](255) NULL DEFAULT (''),
  [dtBaslangic] [smalldatetime] NULL,
  [dtBitis] [smalldatetime] NULL,
  [sSigortaSirketi] [varchar](255) NULL DEFAULT (''),
  [sSigortaliAdi] [varchar](255) NULL DEFAULT (''),
  [ldNetPrim] [decimal](22, 6) NULL DEFAULT (0),
  [ldBrutPrim] [decimal](22, 6) NULL DEFAULT (0),
  [ldKaskoBedeli] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracSigortaKasko_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO