CREATE TABLE [GUSTO00001].[ProjeSelYaldiz] (
  [ProjeSelYaldiz_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nYaldizSeligrafi] [smallint] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [ldBaskiSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurulumSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [pMalzeme] [int] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [ldMalzemeMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldTezgahMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [bFason] [bit] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldMalzemeMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalzemeMiktariG] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalzemeMiktariD] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeSelYaldiz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO