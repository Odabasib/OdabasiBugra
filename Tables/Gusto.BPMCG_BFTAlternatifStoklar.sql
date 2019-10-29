CREATE TABLE [Gusto].[BPMCG_BFTAlternatifStoklar] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pAltStok] [int] NULL DEFAULT (0),
  [ldAltMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [sAltBirim] [varchar](255) NULL DEFAULT (''),
  [ldAltBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVTutari_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldKALtKDVMatrah] [decimal](22, 6) NULL DEFAULT (0),
  [ldKALtKDVMatrah_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltToplamFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pAltSatirRowid] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_BFTAlternatifStoklar]
  ADD CONSTRAINT [BPMCG_BFTAlternatifStoklarONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMCG_VTBirimFiyatSatirlar] ([ROWID]) ON DELETE CASCADE
GO