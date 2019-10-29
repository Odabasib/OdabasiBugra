CREATE TABLE [Gusto].[Bpm_IsEmriEtiketSatir] (
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

CREATE INDEX [NonClusteredIndex-20190429-103155]
  ON [Gusto].[Bpm_IsEmriEtiketSatir] ([pStokKodu])
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20190429-103212]
  ON [Gusto].[Bpm_IsEmriEtiketSatir] ([bTekliCokluPaket])
  ON [PRIMARY]
GO

ALTER TABLE [Gusto].[Bpm_IsEmriEtiketSatir]
  ADD CONSTRAINT [FK_Baslik] FOREIGN KEY ([pIsEmriEtiketBaslik]) REFERENCES [Gusto].[Bpm_IsEmriEtiketBaslik] ([Rowid]) ON DELETE CASCADE
GO