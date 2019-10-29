CREATE TABLE [GUSTO00003].[IsEmri_IslemMakina] (
  [IsEmri_IslemMakina_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NOT NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [pTezgahSinifiKodu] [int] NULL DEFAULT (0),
  [dtMakinaSetupBaslamaTarihi] [smalldatetime] NULL,
  [dtMakinaSetupBitisTarihi] [smalldatetime] NULL,
  [tmMakinaSetupBaslamaZamani] [int] NULL DEFAULT (0),
  [tmMakinaSetupBitisZamani] [int] NULL DEFAULT (0),
  [dtMakinaCalismaBaslamaTarihi] [smalldatetime] NULL,
  [dtMakinaCalismaBitisTarihi] [smalldatetime] NULL,
  [tmMakinaCalismaBaslamaZamani] [int] NULL DEFAULT (0),
  [tmMakinaCalismaBitisZamani] [int] NULL DEFAULT (0),
  [ldMakinaSetupSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nMakinaSetupSureBirim] [tinyint] NULL DEFAULT (0),
  [ldMakinaCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nMakinaCalismaSureBirim] [tinyint] NULL DEFAULT (0),
  [nDegiskenMaliyet1Yuzde] [smallint] NULL DEFAULT (0),
  [nDegiskenMaliyet2Yuzde] [smallint] NULL DEFAULT (0),
  [nDegiskenMaliyet3Yuzde] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [bKaynakSabit] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmri_IslemMakina_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmri_IslemMakina] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriOperasyon]
  ON [GUSTO00003].[IsEmri_IslemMakina] ([pIsEmriOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO