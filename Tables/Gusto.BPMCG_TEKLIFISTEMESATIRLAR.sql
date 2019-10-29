CREATE TABLE [Gusto].[BPMCG_TEKLIFISTEMESATIRLAR] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
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
  [sAciliyet] [varchar](255) NULL DEFAULT (''),
  [dtTerminTarihi] [datetime] NULL,
  [pTalepKart] [decimal](22, 6) NULL DEFAULT (0),
  [pTalepSatirROWID] [decimal](22, 6) NULL DEFAULT (0),
  [pSatTalep] [int] NULL DEFAULT (0),
  [bMail] [bit] NULL,
  [sSatirDurumu] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_TEKLIFISTEMESATIRLAR]
  ADD CONSTRAINT [BPMCG_TEKLIFISTEMESATIRLARONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_TEKLIFISTEME] ([ROWID]) ON DELETE CASCADE
GO