CREATE TABLE [GUSTO00005].[KodAraligiSablonSatir] (
  [KodAraligiSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NULL DEFAULT (0),
  [pKodBaslangic] [int] NULL DEFAULT (0),
  [pKodBitis] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KodAraligiSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pSablon]
  ON [GUSTO00005].[KodAraligiSablonSatir] ([pSablon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO