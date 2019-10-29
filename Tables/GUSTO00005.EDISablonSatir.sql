CREATE TABLE [GUSTO00005].[EDISablonSatir] (
  [EDISablonSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [sAyrac] [varchar](5) NULL DEFAULT (''),
  [nSatirSayisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDISablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBaslik]
  ON [GUSTO00005].[EDISablonSatir] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO