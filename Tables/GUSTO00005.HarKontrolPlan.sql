CREATE TABLE [GUSTO00005].[HarKontrolPlan] (
  [HarKontrolPlan_rowid] [int] IDENTITY,
  [pKontrolPlan] [int] NULL DEFAULT (0),
  [sSeri] [varchar](50) NULL DEFAULT (''),
  [lNo] [int] NOT NULL DEFAULT (0),
  [dtPlanTarihi] [smalldatetime] NOT NULL,
  [cKontrolAktiviteTipi] [smallint] NOT NULL DEFAULT (0),
  [pIsEmri] [int] NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NULL DEFAULT (0),
  [psthrSatir] [int] NULL DEFAULT (0),
  [pGirisDepoKodu] [int] NULL DEFAULT (0),
  [pHedefDepoKodu] [int] NULL DEFAULT (0),
  [bKontrolZorunlu] [bit] NOT NULL DEFAULT (0),
  [bOnayZorunlu] [bit] NULL DEFAULT (0),
  [pOnayKodu] [int] NULL DEFAULT (0),
  [cKPlanGenelSonuc] [smallint] NULL DEFAULT (0),
  [bAnalizVar] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cKontrolAktiviteTipi]
  ON [GUSTO00005].[HarKontrolPlan] ([cKontrolAktiviteTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cKPlanGenelSonuc]
  ON [GUSTO00005].[HarKontrolPlan] ([cKPlanGenelSonuc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [lNo]
  ON [GUSTO00005].[HarKontrolPlan] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGirisDepoKodu]
  ON [GUSTO00005].[HarKontrolPlan] ([pGirisDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHedefDepoKodu]
  ON [GUSTO00005].[HarKontrolPlan] ([pHedefDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmri]
  ON [GUSTO00005].[HarKontrolPlan] ([pIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [psthrSatir]
  ON [GUSTO00005].[HarKontrolPlan] ([psthrSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sSeri]
  ON [GUSTO00005].[HarKontrolPlan] ([sSeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO