CREATE TABLE [GUSTO00001].[SatisPlaniKota] (
  [SatisPlaniKota_rowid] [int] IDENTITY,
  [pPlanStok] [int] NULL DEFAULT (0),
  [nSubDonemId] [int] NULL DEFAULT (0),
  [dtBasTarih] [smalldatetime] NULL,
  [dtBitTarih] [smalldatetime] NULL,
  [ldMiktar1] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 2) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 2) NULL DEFAULT (0),
  [ldBrutFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [ldNetFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SatisPlaniKota_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PlanlamaKota]
  ON [GUSTO00001].[SatisPlaniKota] ([pPlanStok], [nSubDonemId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO