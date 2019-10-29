CREATE TABLE [GUSTO00004].[EDIGustoIslemKosulu] (
  [EDIGustoIslemKosulu_rowid] [int] IDENTITY,
  [pIslem] [int] NULL DEFAULT (0),
  [pSatir] [int] NULL DEFAULT (0),
  [pAlan] [int] NULL DEFAULT (0),
  [cKosul] [char](1) NULL DEFAULT (' '),
  [sDeger] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIGustoIslemKosulu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIslem]
  ON [GUSTO00004].[EDIGustoIslemKosulu] ([pIslem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO