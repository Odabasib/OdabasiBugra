CREATE TABLE [GUSTO00005].[Dil] (
  [Dil_rowid] [int] IDENTITY,
  [sDilKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sDilAdi] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Dil_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sDilKodu]
  ON [GUSTO00005].[Dil] ([sDilKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO