CREATE TABLE [GUSTO00005].[EDIGustoIslemBaslik] (
  [EDIGustoIslemBaslik_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [pEDIGorev] [int] NULL DEFAULT (0),
  [pSablonSatir] [int] NULL DEFAULT (0),
  [nGustoBelgesi] [int] NULL DEFAULT (0),
  [nGustoIslemi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIGustoIslemBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Sablon]
  ON [GUSTO00005].[EDIGustoIslemBaslik] ([pEDIGorev], [pSablonSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO