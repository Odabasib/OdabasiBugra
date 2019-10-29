CREATE TABLE [GUSTO00005].[SevkiyatPlaniFirma] (
  [SevkiyatPlaniFirma_rowid] [int] IDENTITY,
  [pSevkEmriBaslik] [int] NULL DEFAULT (0),
  [pSevkEmriSatir] [int] NULL DEFAULT (0),
  [sSeriSevkEmri] [varchar](20) NULL DEFAULT (''),
  [lNoSevkEmri] [int] NULL DEFAULT (0),
  [pSiparisSatir] [int] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCariKodu] [int] NULL DEFAULT (0),
  [cStokHizmetDemirbas] [char](1) NULL DEFAULT (' '),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pKulTan] [int] NULL DEFAULT (0),
  [sKulTanKod] [varchar](120) NULL DEFAULT (''),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtTeslimTarihi] [smalldatetime] NULL,
  [ldFirmaDagitimMiktari1Birim] [decimal](22, 2) NULL DEFAULT (0),
  [ldFirmaDagitimMiktari2Birim] [decimal](22, 2) NULL DEFAULT (0),
  [ldFirmaDagitimMiktari3Birim] [decimal](22, 2) NULL DEFAULT (0),
  [ldFirmaSiparisMiktari1Birim] [decimal](22, 2) NULL DEFAULT (0),
  [ldFirmaSiparisMiktari2Birim] [decimal](22, 2) NULL DEFAULT (0),
  [ldFirmaSiparisMiktari3Birim] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SevkiyatPlaniFirma_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pSiparisSatirKey]
  ON [GUSTO00005].[SevkiyatPlaniFirma] ([pSiparisSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO