CREATE TABLE [GUSTO00004].[HarKontrolPlanRzv] (
  [HarKontrolPlanRzv_rowid] [int] IDENTITY,
  [pHarKontrolPlan] [int] NULL DEFAULT (0),
  [pRezervasyon] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanRzv_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlan]
  ON [GUSTO00004].[HarKontrolPlanRzv] ([pHarKontrolPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO