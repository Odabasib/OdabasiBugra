CREATE TABLE [GUSTO00005].[KontrolPlanSepet] (
  [KontrolPlanSepet_rowid] [int] IDENTITY,
  [pKontrolPlan] [int] NOT NULL DEFAULT (0),
  [nTur] [tinyint] NOT NULL DEFAULT (0),
  [pBaslangic] [int] NOT NULL DEFAULT (0),
  [pBitis] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanSepet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nPlanTur]
  ON [GUSTO00005].[KontrolPlanSepet] ([pKontrolPlan], [nTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlan]
  ON [GUSTO00005].[KontrolPlanSepet] ([pKontrolPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO