CREATE TABLE [Gusto].[GustoDIZRaporlari] (
  [GustoDIZRaporlari_rowid] [int] IDENTITY,
  [pDIZListesi] [int] NULL DEFAULT (0),
  [nGEkranTuru] [int] NULL DEFAULT (0),
  [sDIZListesiAdi] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoDIZRaporlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nGEkranTuru]
  ON [Gusto].[GustoDIZRaporlari] ([nGEkranTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO