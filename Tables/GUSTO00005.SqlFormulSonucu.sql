CREATE TABLE [GUSTO00005].[SqlFormulSonucu] (
  [SqlFormulSonucu_rowid] [int] IDENTITY,
  [pFormul] [int] NULL DEFAULT (0),
  [cCalismaTuru] [char](1) NULL DEFAULT (' '),
  [pKaynak] [int] NULL DEFAULT (0),
  [nSonuc] [smallint] NULL DEFAULT (0),
  [sSonuc] [varchar](50) NULL DEFAULT (''),
  [dtSonuc] [smalldatetime] NULL,
  [ldSonuc] [decimal](22, 6) NULL DEFAULT (0),
  [cSonuc] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SqlFormulSonucu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FormulName]
  ON [GUSTO00005].[SqlFormulSonucu] ([pFormul], [cCalismaTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO