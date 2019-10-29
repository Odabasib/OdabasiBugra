CREATE TABLE [Gusto].[GOlayMesajlari] (
  [GOlayMesajlari_rowid] [int] IDENTITY,
  [sMesajAdi] [varchar](50) NULL DEFAULT (''),
  [sMesaj] [varchar](255) NOT NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GOlayMesajlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sMesaj]
  ON [Gusto].[GOlayMesajlari] ([sMesaj])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO