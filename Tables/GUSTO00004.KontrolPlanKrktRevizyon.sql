CREATE TABLE [GUSTO00004].[KontrolPlanKrktRevizyon] (
  [KontrolPlanKrktRevizyon_rowid] [int] IDENTITY,
  [pKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
  [nRevizyonSira] [smallint] NULL DEFAULT (0),
  [sRevizyonSiraNo] [varchar](50) NULL DEFAULT (''),
  [sRevizyonAciklamasi] [varchar](2048) NOT NULL DEFAULT (''),
  [pKaliteDokumanKodu] [int] NULL DEFAULT (0),
  [pDOFIKodu] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanKrktRevizyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlanKrkt]
  ON [GUSTO00004].[KontrolPlanKrktRevizyon] ([pKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO