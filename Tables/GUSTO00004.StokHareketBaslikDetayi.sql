CREATE TABLE [GUSTO00004].[StokHareketBaslikDetayi] (
  [StokHareketBaslikDetayi_rowid] [int] IDENTITY,
  [pStokHareketBaslik] [int] NULL DEFAULT (0),
  [pGelirGiderYeri] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([StokHareketBaslikDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStokHareketBaslik]
  ON [GUSTO00004].[StokHareketBaslikDetayi] ([pStokHareketBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO