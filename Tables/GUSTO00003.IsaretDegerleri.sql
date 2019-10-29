CREATE TABLE [GUSTO00003].[IsaretDegerleri] (
  [IsaretDegerleri_rowid] [int] IDENTITY,
  [pIsaretTanimi] [int] NULL DEFAULT (0),
  [sDeger] [varchar](35) NULL DEFAULT (''),
  [cKisaDeger] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([IsaretDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TanimDegerKey]
  ON [GUSTO00003].[IsaretDegerleri] ([pIsaretTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO