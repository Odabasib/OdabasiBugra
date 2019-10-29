CREATE TABLE [GUSTO00001].[IsEmriGanttUzatmaBagl] (
  [IsEmriGanttUzatmaBagl_rowid] [int] IDENTITY,
  [pIsemriOprUzayan] [int] NOT NULL DEFAULT (0),
  [pIsemriOprUzatan] [int] NULL DEFAULT (0),
  [ldSure] [decimal](22, 2) NULL DEFAULT (0),
  [nSureBirim] [tinyint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriGanttUzatmaBagl_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemriOprUzatan]
  ON [GUSTO00001].[IsEmriGanttUzatmaBagl] ([pIsemriOprUzatan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriOprUzayan]
  ON [GUSTO00001].[IsEmriGanttUzatmaBagl] ([pIsemriOprUzayan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO