CREATE TABLE [GUSTO00005].[UcretKatsayi] (
  [UcretKatsayi_rowid] [int] IDENTITY,
  [dtBastar] [smalldatetime] NOT NULL,
  [pUnvanGrubu] [int] NOT NULL DEFAULT (0),
  [ldAylikUcretKatsayisi] [decimal](22, 2) NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UcretKatsayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UcretKatsayiBastarKey]
  ON [GUSTO00005].[UcretKatsayi] ([dtBastar], [pUnvanGrubu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO