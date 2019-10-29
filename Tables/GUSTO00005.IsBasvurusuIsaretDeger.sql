CREATE TABLE [GUSTO00005].[IsBasvurusuIsaretDeger] (
  [IsBasvurusuIsaretDeger_rowid] [int] IDENTITY,
  [pTanimID] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [sDeger] [varchar](35) NULL DEFAULT (''),
  [cKisaDeger] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [pVarsayilan] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuIsaretDeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TanimIDTurKey]
  ON [GUSTO00005].[IsBasvurusuIsaretDeger] ([pTanimID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO