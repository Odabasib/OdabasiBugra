CREATE TABLE [GUSTO00005].[ProjeKalip] (
  [ProjeKalip_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [nKalipTuru] [smallint] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldKalipSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [bFason] [bit] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeklifFiyati] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeKalip_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO