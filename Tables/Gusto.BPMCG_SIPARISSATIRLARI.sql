CREATE TABLE [Gusto].[BPMCG_SIPARISSATIRLARI] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pDoviz_KurTarihi] [datetime] NULL,
  [pDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamTutar_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOran] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVTutar_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldGenelToplam] [decimal](22, 6) NULL DEFAULT (0),
  [ldGenelToplam_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pTalepSatirRowid] [decimal](22, 6) NULL DEFAULT (0),
  [COL_1257] [int] NULL DEFAULT (-1),
  [pTalepFormu] [int] NULL DEFAULT (0),
  [pTeklifSatirRowid] [decimal](22, 6) NULL DEFAULT (0),
  [nVadeSuresi] [decimal](22, 6) NULL DEFAULT (0),
  [dtTeslimTarihi] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_SIPARISSATIRLARI]
  ADD CONSTRAINT [BPMCG_SIPARISSATIRLARIONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_SATINALMASIPARIS] ([ROWID]) ON DELETE CASCADE
GO