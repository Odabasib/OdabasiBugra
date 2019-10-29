CREATE TABLE [Gusto].[KolonAciklamalari] (
  [KolonAciklamalari_rowid] [int] IDENTITY,
  [sDbColName] [varchar](30) NULL DEFAULT (''),
  [sAciklama] [varchar](40) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([KolonAciklamalari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sDbColName]
  ON [Gusto].[KolonAciklamalari] ([sDbColName])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO