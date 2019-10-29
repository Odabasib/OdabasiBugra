CREATE TABLE [GUSTO00005].[VardiyaTanimi] (
  [VardiyaTanimi_rowid] [int] IDENTITY,
  [sVardiyaKodu] [varchar](30) NULL DEFAULT (''),
  [sVardiyaAdi] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VardiyaTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sVardiyaKodu]
  ON [GUSTO00005].[VardiyaTanimi] ([sVardiyaKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO