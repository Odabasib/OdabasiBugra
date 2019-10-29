CREATE TABLE [GUSTO00001].[EnfMuhSablon] (
  [EnfMuhSablon_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](30) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EnfMuhSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sTanimAdi]
  ON [GUSTO00001].[EnfMuhSablon] ([sTanimAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO