CREATE TABLE [Gusto].[BPMCG_VTAlternatifStoklar] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pAltStok] [int] NULL DEFAULT (0),
  [ldAltMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pAltDoviz] [int] NULL DEFAULT (0),
  [pAltDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pAltDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pAltDoviz_KurTarihi] [datetime] NULL,
  [pAltDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVTutari_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVMatrah] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVMatrah_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltToplamFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [sAltBirim] [varchar](255) NULL DEFAULT (''),
  [pAltDurum] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_VTAlternatifStoklar]
  ADD CONSTRAINT [BPMCG_VTAlternatifStoklarONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMCG_VTeklifSatirlari] ([ROWID]) ON DELETE CASCADE
GO