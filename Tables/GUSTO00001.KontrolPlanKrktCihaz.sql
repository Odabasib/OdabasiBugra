CREATE TABLE [GUSTO00001].[KontrolPlanKrktCihaz] (
  [KontrolPlanKrktCihaz_rowid] [int] IDENTITY,
  [pKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [pBaslangic] [int] NULL DEFAULT (0),
  [pBitis] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanKrktCihaz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlanKrkt]
  ON [GUSTO00001].[KontrolPlanKrktCihaz] ([pKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO