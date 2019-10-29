CREATE TABLE [GUSTO00003].[KonsolidasyonZamanlari] (
  [KonsolidasyonZamanlari_rowid] [int] IDENTITY,
  [pYevmiyeFisi] [int] NOT NULL DEFAULT (0),
  [pKonsolideDonem] [int] NOT NULL DEFAULT (0),
  [dtKonsolidasyon] [smalldatetime] NULL,
  [tmKonsolidasyon] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KonsolidasyonZamanlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KonsolidasyonDonem]
  ON [GUSTO00003].[KonsolidasyonZamanlari] ([pYevmiyeFisi], [pKonsolideDonem], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO