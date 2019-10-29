CREATE TABLE [GUSTO00003].[KontrolPlanSecimKriter] (
  [KontrolPlanSecimKriter_rowid] [int] IDENTITY,
  [cKontrolAktiviteTipi] [smallint] NOT NULL DEFAULT (0),
  [cSeviye] [smallint] NOT NULL DEFAULT (0),
  [Oncelik01] [varchar](50) NULL DEFAULT (''),
  [Oncelik02] [varchar](50) NULL DEFAULT (''),
  [Oncelik03] [varchar](50) NULL DEFAULT (''),
  [Oncelik04] [varchar](50) NULL DEFAULT (''),
  [Oncelik05] [varchar](50) NULL DEFAULT (''),
  [Oncelik06] [varchar](50) NULL DEFAULT (''),
  [Oncelik07] [varchar](50) NULL DEFAULT (''),
  [Oncelik08] [varchar](50) NULL DEFAULT (''),
  [Oncelik09] [varchar](50) NULL DEFAULT (''),
  [Oncelik10] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanSecimKriter_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cKontrolAktiviteTipi]
  ON [GUSTO00003].[KontrolPlanSecimKriter] ([cKontrolAktiviteTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cSeviye]
  ON [GUSTO00003].[KontrolPlanSecimKriter] ([cSeviye])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO