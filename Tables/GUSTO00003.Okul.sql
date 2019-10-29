CREATE TABLE [GUSTO00003].[Okul] (
  [Okul_rowid] [int] IDENTITY,
  [sOkulKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sOkulAdi] [varchar](60) NULL DEFAULT (''),
  [nOkulTuru] [tinyint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Okul_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sOkulKodu]
  ON [GUSTO00003].[Okul] ([sOkulKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO