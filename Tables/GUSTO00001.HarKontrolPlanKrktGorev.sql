CREATE TABLE [GUSTO00001].[HarKontrolPlanKrktGorev] (
  [HarKontrolPlanKrktGorev_rowid] [int] IDENTITY,
  [pHarKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NOT NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanKrktGorev_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGorevKodu]
  ON [GUSTO00001].[HarKontrolPlanKrktGorev] ([pGorevKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlanKrkt]
  ON [GUSTO00001].[HarKontrolPlanKrktGorev] ([pHarKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO