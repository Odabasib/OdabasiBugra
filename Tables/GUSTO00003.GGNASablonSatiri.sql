CREATE TABLE [GUSTO00003].[GGNASablonSatiri] (
  [GGNASablonSatiri_rowid] [int] IDENTITY,
  [pGGNASablon] [int] NULL DEFAULT (0),
  [cKaynakTuru] [char](1) NULL DEFAULT (' '),
  [pKaynakFormul] [int] NULL DEFAULT (0),
  [cHedefTuru] [char](1) NULL DEFAULT (' '),
  [pHedefFormul] [int] NULL DEFAULT (0),
  [fYuzde] [real] NULL DEFAULT (0.000000),
  [sSatirAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GGNASablonSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGGNASablon]
  ON [GUSTO00003].[GGNASablonSatiri] ([pGGNASablon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO