CREATE TABLE [GUSTO00005].[ProjeMaliyetler] (
  [ProjeMaliyetler_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nDirektEndirekt] [tinyint] NULL DEFAULT (0),
  [ldMaliyetBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyetBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyetBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeMaliyetler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pProje]
  ON [GUSTO00005].[ProjeMaliyetler] ([pProje])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO