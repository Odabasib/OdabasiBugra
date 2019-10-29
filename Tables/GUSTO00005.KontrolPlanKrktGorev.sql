CREATE TABLE [GUSTO00005].[KontrolPlanKrktGorev] (
  [KontrolPlanKrktGorev_rowid] [int] IDENTITY,
  [pKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NOT NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanKrktGorev_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGorevKodu]
  ON [GUSTO00005].[KontrolPlanKrktGorev] ([pGorevKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlanKrkt]
  ON [GUSTO00005].[KontrolPlanKrktGorev] ([pKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO