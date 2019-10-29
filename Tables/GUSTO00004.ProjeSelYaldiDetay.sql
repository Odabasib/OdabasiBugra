CREATE TABLE [GUSTO00004].[ProjeSelYaldiDetay] (
  [ProjeSelYaldiDetay_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [pSeligrariYaldiz] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nYaldizSeligrafi] [smallint] NULL DEFAULT (0),
  [nUygulama] [int] NULL DEFAULT (0),
  [nForma] [smallint] NULL DEFAULT (0),
  [bOn] [bit] NULL DEFAULT (0),
  [bArka] [smallint] NULL DEFAULT (0),
  [sLabel] [varchar](50) NULL DEFAULT (''),
  [ldBaskiYuzeyi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTabakaSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalzemeMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeSelYaldiDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO