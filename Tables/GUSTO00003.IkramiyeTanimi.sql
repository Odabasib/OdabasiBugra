CREATE TABLE [GUSTO00003].[IkramiyeTanimi] (
  [IkramiyeTanimi_rowid] [int] IDENTITY,
  [sIkramiyeKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sIkramiyeAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nTur] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IkramiyeTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sIkramiyeKodu]
  ON [GUSTO00003].[IkramiyeTanimi] ([sIkramiyeKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO