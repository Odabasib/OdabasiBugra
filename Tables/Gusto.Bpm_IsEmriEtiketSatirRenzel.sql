CREATE TABLE [Gusto].[Bpm_IsEmriEtiketSatirRenzel] (
  [Rowid] [int] IDENTITY,
  [pIsEmriEtiketBaslik] [int] NULL,
  [ldMiktar] [decimal](22, 6) NULL,
  [pStokKodu] [int] NULL,
  [sStokKodu] [varchar](255) NULL,
  [sStokAdi] [varchar](255) NULL,
  [sUreticiKodu] [varchar](255) NULL,
  [pIsemri] [int] NULL,
  [sPaketlemeTuru] [varchar](255) NULL,
  [bTekliCokluPaket] [tinyint] NULL,
  [sSiparisReferansNo] [varchar](50) NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[Bpm_IsEmriEtiketSatirRenzel]
  ADD CONSTRAINT [FK_BaslikRenzel] FOREIGN KEY ([pIsEmriEtiketBaslik]) REFERENCES [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] ([Rowid]) ON DELETE CASCADE
GO