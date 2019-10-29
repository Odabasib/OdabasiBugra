CREATE TABLE [Gusto].[BPMCG_VTKontrolSatirlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pDoviz_KurTarihi] [datetime] NULL,
  [pDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldTeklifSatirID] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [sStokTuru] [varchar](255) NULL DEFAULT (''),
  [pDurum] [int] NULL DEFAULT (1),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_VTKontrolSatirlari]
  ADD CONSTRAINT [BPMCG_VTKontrolSatirlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_VTTEKLIFKONTROL] ([ROWID]) ON DELETE CASCADE
GO