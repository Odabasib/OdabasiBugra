CREATE TABLE [GUSTO00003].[StokDepozitoKontrolleri] (
  [StokDepozitoKontrolleri_rowid] [int] IDENTITY,
  [pDepozitoSatiri] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [ldDepozitoSeviyesi] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDepozitoKontrolleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDepozitoSatiri]
  ON [GUSTO00003].[StokDepozitoKontrolleri] ([pDepozitoSatiri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO