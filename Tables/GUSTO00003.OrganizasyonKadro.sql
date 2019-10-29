CREATE TABLE [GUSTO00003].[OrganizasyonKadro] (
  [OrganizasyonKadro_rowid] [int] IDENTITY,
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [nKisiSayisi] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OrganizasyonKadro_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGorevTanimi]
  ON [GUSTO00003].[OrganizasyonKadro] ([pGorevTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOrganizasyon]
  ON [GUSTO00003].[OrganizasyonKadro] ([pOrganizasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO