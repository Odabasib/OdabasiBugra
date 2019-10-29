CREATE TABLE [GUSTO00005].[KonsolidasyonBilgileri] (
  [KonsolidasyonBilgileri_rowid] [int] IDENTITY,
  [pDonem] [int] NOT NULL DEFAULT (0),
  [pOkunacakDonem] [int] NOT NULL DEFAULT (0),
  [pHesapAdiTanimi] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KonsolidasyonBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDonem]
  ON [GUSTO00005].[KonsolidasyonBilgileri] ([pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO