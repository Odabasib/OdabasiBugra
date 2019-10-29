CREATE TABLE [GUSTO00005].[MaliTabloToplam] (
  [MaliTabloToplam_rowid] [int] IDENTITY,
  [pMaliTabloKodu] [int] NOT NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  [ldToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizToplam] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloToplam_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KodDonemKey]
  ON [GUSTO00005].[MaliTabloToplam] ([pMaliTabloKodu], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO