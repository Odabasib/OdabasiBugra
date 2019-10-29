CREATE TABLE [GUSTO00001].[HarKontrolPlanOlcumGorev] (
  [HarKontrolPlanOlcumGorev_rowid] [int] IDENTITY,
  [pHarKontrolPlanOlcumSonuc] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [cOlcumSureBirim] [smallint] NULL DEFAULT (0),
  [ldOlcumToplamSure] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanOlcumGorev_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGorevKodu]
  ON [GUSTO00001].[HarKontrolPlanOlcumGorev] ([pGorevKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanOlcumSonuc]
  ON [GUSTO00001].[HarKontrolPlanOlcumGorev] ([pHarKontrolPlanOlcumSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00001].[HarKontrolPlanOlcumGorev] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO