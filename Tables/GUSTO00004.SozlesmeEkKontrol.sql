CREATE TABLE [GUSTO00004].[SozlesmeEkKontrol] (
  [SozlesmeEkKontrol_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [pSozlesme] [int] NULL DEFAULT (0),
  [nIslemTuru] [int] NULL DEFAULT (0),
  [sText] [varchar](250) NULL DEFAULT (''),
  [ldNumber] [decimal](22, 2) NULL DEFAULT (0),
  [ldAltLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldUstLimit] [decimal](22, 2) NULL DEFAULT (0),
  [nLimitTuru] [int] NULL DEFAULT (0),
  [bTumAralik] [bit] NULL DEFAULT (0),
  [dtBaslangic] [smalldatetime] NULL,
  [dtBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [nKullanimSayisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SozlesmeEkKontrol_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO