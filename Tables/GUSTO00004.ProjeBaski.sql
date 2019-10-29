CREATE TABLE [GUSTO00004].[ProjeBaski] (
  [ProjeBaski_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [ldBaskiSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurulumSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBaskiMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSure] [decimal](22, 2) NULL DEFAULT (0),
  [ldBoyaMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldKimyasalMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [bFason] [bit] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeBaski_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO