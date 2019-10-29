CREATE TABLE [GUSTO00005].[ProjeRenkler] (
  [ProjeRenkler_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nYogunluk] [smallint] NULL DEFAULT (0),
  [ldMiktarKirmizi] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktarSari] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktarMavi] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktarSiyah] [decimal](22, 2) NULL DEFAULT (0),
  [pStokKirmizi] [int] NULL DEFAULT (0),
  [pStokSari] [int] NULL DEFAULT (0),
  [pStokMavi] [int] NULL DEFAULT (0),
  [pStokSiyah] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeRenkler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO