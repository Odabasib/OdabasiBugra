CREATE TABLE [GUSTO00003].[AracParcaBaglanti] (
  [AracParcaBaglanti_rowid] [int] IDENTITY,
  [pAracKodu] [int] NULL DEFAULT (0),
  [cParcaTuru] [char](1) NULL DEFAULT (' '),
  [pParca] [int] NULL DEFAULT (0),
  [pParcaDetay] [int] NULL DEFAULT (0),
  [sParcaAdi] [varchar](255) NULL DEFAULT (''),
  [sParcaDigerAdi] [varchar](255) NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (0),
  [ldTakilanKm] [decimal](22, 6) NULL DEFAULT (0),
  [ldSokulenKm] [decimal](22, 6) NULL DEFAULT (0),
  [dtTakma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracParcaBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO