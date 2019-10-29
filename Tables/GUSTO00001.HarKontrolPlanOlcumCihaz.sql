CREATE TABLE [GUSTO00001].[HarKontrolPlanOlcumCihaz] (
  [HarKontrolPlanOlcumCihaz_rowid] [int] IDENTITY,
  [pHarKontrolPlanOlcumSonuc] [int] NOT NULL DEFAULT (0),
  [pTezgahSinifi] [int] NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [cOlcumSureBirim] [smallint] NULL DEFAULT (0),
  [ldOlcumToplamSure] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanOlcumCihaz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanOlcumSonuc]
  ON [GUSTO00001].[HarKontrolPlanOlcumCihaz] ([pHarKontrolPlanOlcumSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTezgahKodu]
  ON [GUSTO00001].[HarKontrolPlanOlcumCihaz] ([pTezgahKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTezgahSinifi]
  ON [GUSTO00001].[HarKontrolPlanOlcumCihaz] ([pTezgahSinifi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO