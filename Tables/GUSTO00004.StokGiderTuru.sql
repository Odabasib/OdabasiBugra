CREATE TABLE [GUSTO00004].[StokGiderTuru] (
  [StokGiderTuru_rowid] [int] IDENTITY,
  [cStokHizmet] [char](1) NOT NULL DEFAULT (' '),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pGGTuru] [int] NOT NULL DEFAULT (0),
  [pYansitmaGGTuru] [int] NOT NULL DEFAULT (0),
  [pBakimGGTuru] [int] NOT NULL DEFAULT (0),
  [pBakimYansitmaGGTuru] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokGiderTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokKey]
  ON [GUSTO00004].[StokGiderTuru] ([pStokKodu], [nHareketTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO