CREATE TABLE [GUSTO00001].[MemurKatsayiGosterge] (
  [MemurKatsayiGosterge_rowid] [int] IDENTITY,
  [dtBastar] [smalldatetime] NOT NULL,
  [pYasalStatu] [int] NULL DEFAULT (0),
  [ldDevMemMaasKatsayi] [decimal](22, 6) NULL DEFAULT (0),
  [ldESKKurumPayiOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldESKCalisanPayiOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldESKIlkGirisOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldTabanKatsayisi] [decimal](22, 6) NULL DEFAULT (0),
  [ldTabanGostergesi] [decimal](22, 6) NULL DEFAULT (0),
  [ldKidemGostergesi] [decimal](22, 6) NULL DEFAULT (0),
  [ldEnYukDevMemGostergesi] [decimal](22, 6) NULL DEFAULT (0),
  [ldYanOdemeKatsayisi] [decimal](22, 6) NULL DEFAULT (0),
  [ldAileYardimKatsayi] [decimal](22, 6) NULL DEFAULT (0),
  [ldKidemPuani] [decimal](22, 6) NULL DEFAULT (0),
  [ldTasarrufKesSahisYuzdesi] [decimal](22, 6) NULL DEFAULT (0),
  [ldTasarrufKesKurumYuzdesi] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliSorumlulukPuani] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MemurKatsayiGosterge_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [dtBastar]
  ON [GUSTO00001].[MemurKatsayiGosterge] ([dtBastar], [pYasalStatu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO