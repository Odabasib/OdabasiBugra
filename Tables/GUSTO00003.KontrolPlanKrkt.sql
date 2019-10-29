CREATE TABLE [GUSTO00003].[KontrolPlanKrkt] (
  [KontrolPlanKrkt_rowid] [int] IDENTITY,
  [pKontrolPlan] [int] NOT NULL DEFAULT (0),
  [pKontrolKrkt] [int] NOT NULL DEFAULT (0),
  [pKaliteKontrolYeri] [int] NOT NULL DEFAULT (0),
  [bKontrolZorunlu] [bit] NULL DEFAULT (0),
  [sCizimKontrolNoktasi] [varchar](50) NULL DEFAULT (''),
  [pOlcuBirimi] [int] NULL DEFAULT (0),
  [ldProsesGPval] [decimal](22, 2) NULL DEFAULT (0),
  [ldProsesOrtalama] [decimal](22, 2) NULL DEFAULT (0),
  [cStdSapmaAnalizTipi] [smallint] NULL DEFAULT (0),
  [ldProsesStdSapma] [decimal](22, 2) NULL DEFAULT (0),
  [cToleransTipi] [smallint] NULL DEFAULT (0),
  [ldProsesToleransUst] [decimal](22, 2) NULL DEFAULT (0),
  [ldProsesToleransAlt] [decimal](22, 2) NULL DEFAULT (0),
  [cGuvenlikBandTipi] [smallint] NULL DEFAULT (0),
  [ldZGuvenlikBandiUst] [decimal](22, 2) NULL DEFAULT (0),
  [ldZGuvenlikBandiAlt] [decimal](22, 2) NULL DEFAULT (0),
  [cKontrolBandTipi] [smallint] NULL DEFAULT (0),
  [ldZKontrolBandiUst] [decimal](22, 2) NULL DEFAULT (0),
  [ldZKontrolBandiAlt] [decimal](22, 2) NULL DEFAULT (0),
  [ldRSUCL] [decimal](22, 2) NULL DEFAULT (0),
  [ldRSLCL] [decimal](22, 2) NULL DEFAULT (0),
  [cOrneklemeFrekansTipi] [smallint] NOT NULL DEFAULT (0),
  [cOrneklemeFrekansBirimi] [smallint] NOT NULL DEFAULT (0),
  [ldOrneklemeAraligi] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldOrneklemeKumeBoyutu] [decimal](22, 2) NOT NULL DEFAULT (0),
  [cOlcumSureBirim] [smallint] NULL DEFAULT (0),
  [ldBirimOlcumSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [pKaliteDokumanKodu] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [bDenemeSayisiSabit] [bit] NULL DEFAULT (0),
  [nDenemeSayisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KontrolPlanKrkt_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cOrneklemeFrekansBirimi]
  ON [GUSTO00003].[KontrolPlanKrkt] ([cOrneklemeFrekansBirimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cOrneklemeFrekansTipi]
  ON [GUSTO00003].[KontrolPlanKrkt] ([cOrneklemeFrekansTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cToleransTipi]
  ON [GUSTO00003].[KontrolPlanKrkt] ([cToleransTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KontrolPlanKrk]
  ON [GUSTO00003].[KontrolPlanKrkt] ([pKontrolPlan], [pKontrolKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKaliteKontrolYeri]
  ON [GUSTO00003].[KontrolPlanKrkt] ([pKaliteKontrolYeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolKrkt]
  ON [GUSTO00003].[KontrolPlanKrkt] ([pKontrolKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlan]
  ON [GUSTO00003].[KontrolPlanKrkt] ([pKontrolPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO