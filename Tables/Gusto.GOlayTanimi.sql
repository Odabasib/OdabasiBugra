CREATE TABLE [Gusto].[GOlayTanimi] (
  [GOlayTanimi_rowid] [int] IDENTITY,
  [pFirma] [int] NOT NULL DEFAULT (0),
  [cOlayTuru] [char](1) NOT NULL DEFAULT (' '),
  [sAdi] [varchar](255) NOT NULL DEFAULT (''),
  [sGrubu] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pSqlCondition] [int] NOT NULL DEFAULT (0),
  [pSchedule] [int] NOT NULL DEFAULT (0),
  [bLog] [bit] NOT NULL DEFAULT (0),
  [cMesajGonder] [char](1) NOT NULL DEFAULT (' '),
  [pAction] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GOlayTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Branslar]
  ON [Gusto].[GOlayTanimi] ([pFirma], [sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO