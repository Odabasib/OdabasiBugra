CREATE TABLE [Gusto].[BPMCG_VTeklifSatirlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [bStokMevcutDegil] [bit] NULL,
  [sJenerikKod] [varchar](255) NULL DEFAULT (''),
  [sJenerikAd] [varchar](255) NULL DEFAULT (''),
  [pSatirDoviz] [int] NULL DEFAULT (0),
  [pSatirDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pSatirDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pSatirDoviz_KurTarihi] [datetime] NULL,
  [pSatirDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutari_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVMatrahi] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVMatrahi_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [sOlusanJenerikStok] [varchar](255) NULL DEFAULT (''),
  [sSiprSeriNo] [varchar](255) NULL DEFAULT (''),
  [pSatirDurum] [int] NULL DEFAULT (-1),
  [sBirim] [varchar](255) NULL DEFAULT (''),
  [pOlusanJenerikKod] [int] NULL DEFAULT (0),
  [sVTSeriNo] [varchar](255) NULL DEFAULT (''),
  [sJenerikAciklama] [varchar](255) NULL DEFAULT (''),
  [pBaslikCari] [int] NULL,
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_VTeklifSatirlari]
  ADD CONSTRAINT [BPMCG_VTeklifSatirlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMKT_VERILENTEKLIF] ([ROWID]) ON DELETE CASCADE
GO