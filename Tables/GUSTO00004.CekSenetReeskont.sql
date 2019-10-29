﻿CREATE TABLE [GUSTO00004].[CekSenetReeskont] (
  [CekSenetReeskont_rowid] [int] IDENTITY,
  [pSenetCekKart] [int] NULL DEFAULT (0),
  [sSenetCekTuru] [varchar](21) NULL DEFAULT (''),
  [pIslemIdVUK] [int] NULL DEFAULT (0),
  [pIslemIdTFRS] [int] NULL DEFAULT (0),
  [dtReeskontBaslangicTarihi] [smalldatetime] NULL,
  [dtReeskontTarihi] [smalldatetime] NULL,
  [nGunSayisi] [smallint] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldReeskontTutariTFRS] [decimal](22, 2) NULL DEFAULT (0),
  [ldReeskontTutariVUK] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pReeskontDonemi] [int] NULL DEFAULT (0),
  [ldsdReeskontTutariTFRS] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdReeskontTutariVUK] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdReeskontTutariTFRS] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdReeskontTutariVUK] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdReeskontTutariTFRS] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdReeskontTutariVUK] [decimal](22, 2) NULL DEFAULT (0),
  [pKasaKodu] [int] NULL DEFAULT (0),
  [ldReeskontOrani] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CekSenetReeskont_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO