CREATE TABLE [Gusto].[BPMCG_RVAlternatifStoklari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pAltStok] [int] NULL DEFAULT (0),
  [ldAltMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [sAltBirim] [varchar](255) NULL DEFAULT (''),
  [ldAltBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltKDVTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldKALtKDVMatrah] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltToplamFiyat] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_RVAlternatifStoklari]
  ADD CONSTRAINT [BPMCG_RVAlternatifStoklariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMCG_VTRevizeSatirlari] ([ROWID]) ON DELETE CASCADE
GO