CREATE TABLE [GUSTO00003].[GenelVirmanSatir] (
  [GenelVirmanSatir_rowid] [int] IDENTITY,
  [pGVIslemID] [int] NOT NULL DEFAULT (0),
  [cSatirTuru] [char](1) NULL DEFAULT (' '),
  [pSatir] [int] NOT NULL DEFAULT (0),
  [nAvansTeminatSekli] [tinyint] NOT NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NULL,
  [pAvansTanimi] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GenelVirmanSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pGVIslemIDSatir]
  ON [GUSTO00003].[GenelVirmanSatir] ([pGVIslemID], [pSatir], [cSatirTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO