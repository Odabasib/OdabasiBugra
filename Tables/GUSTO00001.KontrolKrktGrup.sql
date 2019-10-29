CREATE TABLE [GUSTO00001].[KontrolKrktGrup] (
  [KontrolKrktGrup_rowid] [int] IDENTITY,
  [sKod] [varchar](50) NOT NULL DEFAULT (''),
  [sAd] [varchar](50) NOT NULL DEFAULT (''),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolKrktGrup_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pUstKod]
  ON [GUSTO00001].[KontrolKrktGrup] ([pUstKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sAd]
  ON [GUSTO00001].[KontrolKrktGrup] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00001].[KontrolKrktGrup] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodAd]
  ON [GUSTO00001].[KontrolKrktGrup] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UstKodKod]
  ON [GUSTO00001].[KontrolKrktGrup] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO