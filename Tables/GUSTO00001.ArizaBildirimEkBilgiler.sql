CREATE TABLE [GUSTO00001].[ArizaBildirimEkBilgiler] (
  [ArizaBildirimEkBilgiler_rowid] [int] IDENTITY,
  [pTalep] [int] NOT NULL DEFAULT (0),
  [pArizaTuru] [int] NULL DEFAULT (0),
  [pArizaNedeni] [int] NULL DEFAULT (0),
  [dtArizaTarihi] [smalldatetime] NULL,
  [tmArizaSaati] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ArizaBildirimEkBilgiler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pTalep]
  ON [GUSTO00001].[ArizaBildirimEkBilgiler] ([pTalep])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO