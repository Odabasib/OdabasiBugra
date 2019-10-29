CREATE TABLE [GUSTO00005].[Yansitma] (
  [Yansitma_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](30) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Yansitma_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sTanimAdi]
  ON [GUSTO00005].[Yansitma] ([sTanimAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO