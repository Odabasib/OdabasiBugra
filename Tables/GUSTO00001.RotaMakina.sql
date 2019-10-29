CREATE TABLE [GUSTO00001].[RotaMakina] (
  [RotaMakina_rowid] [int] IDENTITY,
  [pRotaSatirDetay] [int] NOT NULL DEFAULT (0),
  [pTezgahSinifiKodu] [int] NOT NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [ldMakinaSetupSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nMakinaSetupSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldMakinaCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nMakinaCalismaSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [fDegiskenMaliyet1Yuzde] [real] NULL DEFAULT (0.000000),
  [fDegiskenMaliyet2Yuzde] [real] NULL DEFAULT (0.000000),
  [fDegiskenMaliyet3Yuzde] [real] NULL DEFAULT (0.000000),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pAlternatifSatir] [int] NULL DEFAULT (0),
  [nOncelik] [tinyint] NULL DEFAULT (0),
  [bKaynakSabit] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaMakina_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pOperasyonDetay]
  ON [GUSTO00001].[RotaMakina] ([pRotaSatirDetay], [pTezgahSinifiKodu], [pAlternatifSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO