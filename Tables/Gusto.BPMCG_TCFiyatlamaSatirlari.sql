CREATE TABLE [Gusto].[BPMCG_TCFiyatlamaSatirlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [sBirim] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_TCFiyatlamaSatirlari]
  ADD CONSTRAINT [BPMCG_TCFiyatlamaSatirlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_TCERCEVEFIYATLANDIRMA] ([ROWID]) ON DELETE CASCADE
GO