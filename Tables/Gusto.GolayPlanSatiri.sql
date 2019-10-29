CREATE TABLE [Gusto].[GolayPlanSatiri] (
  [GolayPlanSatiri_rowid] [int] IDENTITY,
  [pPlan] [int] NOT NULL DEFAULT (0),
  [cDay] [char](1) NOT NULL DEFAULT (' '),
  [nTime] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GolayPlanSatiri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pPlan]
  ON [Gusto].[GolayPlanSatiri] ([pPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO