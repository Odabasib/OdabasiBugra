CREATE TABLE [GUSTO00005].[AnketDetayi] (
  [AnketDetayi_rowid] [int] IDENTITY,
  [pAnket] [int] NOT NULL DEFAULT (0),
  [nSiraNo] [smallint] NULL DEFAULT (0),
  [pSoru] [int] NULL DEFAULT (0),
  [bZorunluMu] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AnketDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [AnketSiraKey]
  ON [GUSTO00005].[AnketDetayi] ([pAnket], [nSiraNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SoruAnketKey]
  ON [GUSTO00005].[AnketDetayi] ([pSoru], [pAnket], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO