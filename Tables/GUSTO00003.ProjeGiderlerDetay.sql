CREATE TABLE [GUSTO00003].[ProjeGiderlerDetay] (
  [ProjeGiderlerDetay_rowid] [int] IDENTITY,
  [pGiderler] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [pGelirGiderYeri] [int] NULL DEFAULT (0),
  [ldToplamGider] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitilanGider] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitmaOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamGider2] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitilanGider2] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitmaOrani2] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeGiderlerDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO