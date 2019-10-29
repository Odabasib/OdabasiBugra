CREATE TABLE [GUSTO00001].[KontrolKrkt] (
  [KontrolKrkt_rowid] [int] IDENTITY,
  [pKontrolKrktGrup] [int] NULL DEFAULT (0),
  [sKod] [varchar](50) NOT NULL DEFAULT (''),
  [sAd] [varchar](50) NOT NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [smallint] NULL DEFAULT (0),
  [cKontrolKrktTipi] [smallint] NOT NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolKrkt_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cKontrolKrktTipi]
  ON [GUSTO00001].[KontrolKrkt] ([cKontrolKrktTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolKrktGrup]
  ON [GUSTO00001].[KontrolKrkt] ([pKontrolKrktGrup])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUstKod]
  ON [GUSTO00001].[KontrolKrkt] ([pUstKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00001].[KontrolKrkt] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sKod]
  ON [GUSTO00001].[KontrolKrkt] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAd]
  ON [GUSTO00001].[KontrolKrkt] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKod]
  ON [GUSTO00001].[KontrolKrkt] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO