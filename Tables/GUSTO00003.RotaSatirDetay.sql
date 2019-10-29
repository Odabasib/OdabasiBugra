﻿CREATE TABLE [GUSTO00003].[RotaSatirDetay] (
  [RotaSatirDetay_rowid] [int] IDENTITY,
  [pRotaSatir] [int] NOT NULL DEFAULT (0),
  [nOncelikNo] [tinyint] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nMakinaManuelSubcontract] [tinyint] NOT NULL DEFAULT (0),
  [pIsMerkezi] [int] NULL DEFAULT (0),
  [ldOrtalamaPartiAdedi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSabitUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nSabitUretimSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldDegiskenUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nDegiskenUretimSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldBandUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBandUretimSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [nSeriBandOperasyonu] [tinyint] NULL DEFAULT (0),
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [ldSabitMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldDegiskenMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [fOngorulenUrunFireOrani] [real] NULL DEFAULT (0.000000),
  [ldKapasiteVerimlilik] [decimal](22, 2) NULL DEFAULT (0),
  [ldKapanisUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nKapanisUretimSureBirim] [smallint] NULL DEFAULT (0),
  [nBelirleyiciKaynakSecimi] [smallint] NULL DEFAULT (0),
  [ldBeklemeSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBeklemeSureBirim] [smallint] NULL DEFAULT (0),
  [bSonsuzKapasiteKaynagiMi] [bit] NULL DEFAULT (0),
  [ldBaslamaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nBaslamaSureBirim] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaSatirDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [OncelikKey]
  ON [GUSTO00003].[RotaSatirDetay] ([pRotaSatir], [nOncelikNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO