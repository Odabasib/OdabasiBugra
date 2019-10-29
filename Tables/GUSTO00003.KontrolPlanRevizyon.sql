CREATE TABLE [GUSTO00003].[KontrolPlanRevizyon] (
  [KontrolPlanRevizyon_rowid] [int] IDENTITY,
  [pKontrolPlan] [int] NOT NULL DEFAULT (0),
  [nRevizyonSira] [smallint] NULL DEFAULT (0),
  [sRevizyonSiraNo] [varchar](50) NOT NULL DEFAULT (''),
  [sRevizyonAciklamasi] [varchar](2048) NOT NULL DEFAULT (''),
  [dtRevizyonTarihi] [smalldatetime] NOT NULL,
  [pKaliteDokumanKodu] [int] NULL DEFAULT (0),
  [pDOFIKodu] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanRevizyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlan]
  ON [GUSTO00003].[KontrolPlanRevizyon] ([pKontrolPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO