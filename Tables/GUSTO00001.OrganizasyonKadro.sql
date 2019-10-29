CREATE TABLE [GUSTO00001].[OrganizasyonKadro] (
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
  ON [GUSTO00001].[OrganizasyonKadro] ([pGorevTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOrganizasyon]
  ON [GUSTO00001].[OrganizasyonKadro] ([pOrganizasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO