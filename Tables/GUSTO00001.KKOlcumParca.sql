CREATE TABLE [GUSTO00001].[KKOlcumParca] (
  [KKOlcumParca_rowid] [int] IDENTITY,
  [pKKOlcumVeri] [int] NULL DEFAULT (0),
  [nSiraNo] [int] NULL DEFAULT (0),
  [ldDeger] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKOlcumParca_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKOlcumVeri]
  ON [GUSTO00001].[KKOlcumParca] ([pKKOlcumVeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO