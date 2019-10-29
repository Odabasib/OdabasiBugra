CREATE TABLE [GUSTO00003].[KaliteKontrolYeri] (
  [KaliteKontrolYeri_rowid] [int] IDENTITY,
  [sKod] [varchar](50) NOT NULL DEFAULT (''),
  [sAd] [varchar](50) NOT NULL DEFAULT (''),
  [pIsMerkezi] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteKontrolYeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsMerkezi]
  ON [GUSTO00003].[KaliteKontrolYeri] ([pIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00003].[KaliteKontrolYeri] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO