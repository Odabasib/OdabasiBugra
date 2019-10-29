﻿CREATE TABLE [GUSTO00005].[Meslek] (
  [Meslek_rowid] [int] IDENTITY,
  [sMeslekKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sMeslekAdi] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [nTur] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Meslek_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nTur]
  ON [GUSTO00005].[Meslek] ([nTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sMeslekAdi]
  ON [GUSTO00005].[Meslek] ([sMeslekAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sMeslekKodu]
  ON [GUSTO00005].[Meslek] ([sMeslekKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO