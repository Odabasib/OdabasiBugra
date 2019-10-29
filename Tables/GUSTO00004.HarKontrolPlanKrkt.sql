CREATE TABLE [GUSTO00004].[HarKontrolPlanKrkt] (
  [HarKontrolPlanKrkt_rowid] [int] IDENTITY,
  [pHarKontrolPlan] [int] NOT NULL DEFAULT (0),
  [pKontrolPlanKrkt] [int] NOT NULL DEFAULT (0),
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
  [ldOrnekKumeBoyutu] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldOrnekKumeSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [cOlcumSureBirim] [smallint] NULL DEFAULT (0),
  [ldBirimOlcumSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [pKaliteDokumanKodu] [int] NULL DEFAULT (0),
  [ldOlcumOrtalama] [decimal](22, 2) NULL DEFAULT (0),
  [ldOlcumStdSapma] [decimal](22, 2) NULL DEFAULT (0),
  [cKrktOlcumSonucu] [smallint] NULL DEFAULT (0),
  [bAnalizIcinSec] [bit] NULL DEFAULT (0),
  [bAnalizVar] [bit] NULL DEFAULT (0),
  [bDenemeSayisiSabit] [bit] NULL DEFAULT (0),
  [nDenemeSayisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HarKontrolPlanKrkt_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHarKontrolPlan]
  ON [GUSTO00004].[HarKontrolPlanKrkt] ([pHarKontrolPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolKrkt]
  ON [GUSTO00004].[HarKontrolPlanKrkt] ([pKontrolKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolPlanKrkt]
  ON [GUSTO00004].[HarKontrolPlanKrkt] ([pKontrolPlanKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO