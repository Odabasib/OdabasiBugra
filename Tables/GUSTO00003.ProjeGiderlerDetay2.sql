CREATE TABLE [GUSTO00003].[ProjeGiderlerDetay2] (
  [ProjeGiderlerDetay2_rowid] [int] IDENTITY,
  [pGiderler] [int] NULL DEFAULT (0),
  [pFirma] [int] NULL DEFAULT (0),
  [pGGTuru1] [int] NULL DEFAULT (0),
  [pGGTuru2] [int] NULL DEFAULT (0),
  [pGGYeri1] [int] NULL DEFAULT (0),
  [pGGYeri2] [int] NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamGider] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansiyanGider] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeGiderlerDetay2_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO