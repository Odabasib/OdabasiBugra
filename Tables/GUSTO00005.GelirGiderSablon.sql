CREATE TABLE [GUSTO00005].[GelirGiderSablon] (
  [GelirGiderSablon_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [sSablonAdi] [varchar](30) NULL DEFAULT (''),
  [sSablonAciklama] [varchar](60) NULL DEFAULT (''),
  [cGelirGiderSekli] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([GelirGiderSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonKey]
  ON [GUSTO00005].[GelirGiderSablon] ([nModul], [sSablonAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO