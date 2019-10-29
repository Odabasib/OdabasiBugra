CREATE TABLE [Gusto].[BirimFiyatlandirmaOnayBaslik] (
  [Rowid] [int] IDENTITY,
  [pVerilenTeklif] [int] NULL DEFAULT (0),
  [pBirimFiyatAtamaFaaliyetID] [int] NULL DEFAULT (0),
  [pOnayaGonderenKullanici] [int] NULL DEFAULT (0),
  [pOnayaGonderilenKullanici] [int] NULL DEFAULT (0),
  [dtGonderimTarihi] [smalldatetime] NULL,
  [dtBirimFiyatAtamaTarihi] [smalldatetime] NULL,
  [bFiyatlandirmaYapildi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180626-144939]
  ON [Gusto].[BirimFiyatlandirmaOnayBaslik] ([pVerilenTeklif], [pBirimFiyatAtamaFaaliyetID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO