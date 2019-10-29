CREATE TABLE [GUSTO00005].[VardiyaGunler] (
  [VardiyaGunler_rowid] [int] IDENTITY,
  [pVardiyaKodu] [int] NOT NULL DEFAULT (0),
  [nGun] [tinyint] NOT NULL DEFAULT (0),
  [tmCalismaBaslamaSaati] [smallint] NOT NULL DEFAULT (0),
  [tmCalismaBitisSaati] [smallint] NOT NULL DEFAULT (0),
  [bHaftaTatili] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VardiyaGunler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pVardiyaKodu]
  ON [GUSTO00005].[VardiyaGunler] ([pVardiyaKodu], [nGun], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO