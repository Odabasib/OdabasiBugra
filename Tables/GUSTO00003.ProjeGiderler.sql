CREATE TABLE [GUSTO00003].[ProjeGiderler] (
  [ProjeGiderler_rowid] [int] IDENTITY,
  [nTur] [smallint] NULL DEFAULT (0),
  [nYil] [smallint] NULL DEFAULT (0),
  [nAy] [smallint] NULL DEFAULT (0),
  [nIscilikIsletme] [smallint] NULL DEFAULT (0),
  [ldSaatlikGider] [decimal](22, 2) NULL DEFAULT (0),
  [ldHesaplananGiderToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamGider] [decimal](22, 2) NULL DEFAULT (0),
  [ldAySayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldCalismaSaati] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGider] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeGiderler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO