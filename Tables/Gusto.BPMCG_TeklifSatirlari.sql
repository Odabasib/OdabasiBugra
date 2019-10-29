CREATE TABLE [Gusto].[BPMCG_TeklifSatirlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pDovizSecimi] [int] NULL DEFAULT (0),
  [pDovizSecimi_DovizYeri] [int] NULL DEFAULT (0),
  [pDovizSecimi_DovizTuru] [int] NULL DEFAULT (0),
  [pDovizSecimi_KurTarihi] [datetime] NULL,
  [pDovizSecimi_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutari_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVDahilToplamTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVDahilToplamTutar_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pTalepId] [decimal](22, 6) NULL DEFAULT (0),
  [nKDVOrani] [decimal](22, 6) NULL DEFAULT (0),
  [pDeptKullanici] [int] NULL DEFAULT (0),
  [pTeklifDepartmanOnay] [int] NULL DEFAULT (0),
  [pTeklifYonetimOnay] [int] NULL DEFAULT (0),
  [pUstYonetimOnay] [int] NULL DEFAULT (0),
  [pSatTalepKart] [int] NULL DEFAULT (0),
  [ldOnaylananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [bUYGerekli] [bit] NULL,
  [COL_1292] [bit] NULL,
  [bDeptDegKapanis] [bit] NULL,
  [dtIhtiyac] [datetime] NULL,
  [dtTermin] [datetime] NULL,
  [nVadeSuresi] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_TeklifSatirlari]
  ADD CONSTRAINT [BPMCG_TeklifSatirlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_TEKLIF] ([ROWID]) ON DELETE CASCADE
GO