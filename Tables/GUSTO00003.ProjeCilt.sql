CREATE TABLE [GUSTO00003].[ProjeCilt] (
  [ProjeCilt_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [bTedarikci] [bit] NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [nUygulama] [smallint] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [ldBaskiSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBaskiSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBaskiMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldAdamSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeCilt_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO