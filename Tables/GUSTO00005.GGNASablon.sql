CREATE TABLE [GUSTO00005].[GGNASablon] (
  [GGNASablon_rowid] [int] IDENTITY,
  [pButceId] [int] NULL DEFAULT (0),
  [sSablonAdi] [varchar](30) NULL DEFAULT (''),
  [sSablonAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GGNASablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pButceId]
  ON [GUSTO00005].[GGNASablon] ([pButceId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO