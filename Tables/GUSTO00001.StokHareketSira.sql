CREATE TABLE [GUSTO00001].[StokHareketSira] (
  [StokHareketSira_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NOT NULL,
  [cStokHizmetDemirbas] [char](1) NOT NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [nMaxSira] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHareketSira_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TarihStokKey]
  ON [GUSTO00001].[StokHareketSira] ([pStokKodu], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO