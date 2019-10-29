CREATE TABLE [GUSTO00005].[StokDonemKapama] (
  [StokDonemKapama_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NOT NULL DEFAULT (0),
  [pStokDonemi] [int] NOT NULL DEFAULT (0),
  [bYariMamul] [bit] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT ('A'),
  [ldMaliyet] [decimal](22, 6) NULL DEFAULT (0),
  [nAy] [smallint] NULL DEFAULT (0),
  [dtStokKapatmaTarihi] [smalldatetime] NULL,
  [pKapatanKullanici] [int] NULL DEFAULT (0),
  [dtStokMalHesaplamaTarihi] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([StokDonemKapama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokDonem]
  ON [GUSTO00005].[StokDonemKapama] ([pStokKodu], [pDepoMaliyetKodu], [pStokDonemi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDonemAy]
  ON [GUSTO00005].[StokDonemKapama] ([pStokKodu], [pDepoMaliyetKodu], [pStokDonemi], [nAy])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO