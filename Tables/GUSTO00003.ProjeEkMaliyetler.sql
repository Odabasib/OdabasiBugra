CREATE TABLE [GUSTO00003].[ProjeEkMaliyetler] (
  [ProjeEkMaliyetler_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [bFason] [bit] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeEkMaliyetler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO