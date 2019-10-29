CREATE TABLE [GUSTO00005].[IsBasvurusuIsaret] (
  [IsBasvurusuIsaret_rowid] [int] IDENTITY,
  [pTanimID] [int] NULL DEFAULT (0),
  [pIsaretDegeri] [int] NULL DEFAULT (0),
  [pOwnerID] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuIsaret_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00005].[IsBasvurusuIsaret] ([pOwnerID], [pTanimID], [cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO