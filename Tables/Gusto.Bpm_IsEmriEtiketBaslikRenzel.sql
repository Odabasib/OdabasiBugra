CREATE TABLE [Gusto].[Bpm_IsEmriEtiketBaslikRenzel] (
  [Rowid] [int] IDENTITY,
  [pIsemri] [int] NULL,
  [ldIsEmriMiktari] [decimal](22, 6) NULL,
  [pStokKodu] [int] NULL,
  [sStokAdi] [varchar](255) NULL,
  [ldPaketeGirecekMiktar] [int] NULL,
  [bTekliCokluPaket] [int] NULL,
  [sUrunEtiketAciklama] [varchar](255) NULL,
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL,
  [nBasilacakTekliEtiketSayisi] [int] NULL,
  [nBasilacakCokluEtiketSayisi] [int] NULL,
  [sSiparisReferansNo] [varchar](50) NULL,
  [bMailIletimi] [char](1) NULL,
  [sSiparisYilHafta] [varchar](10) NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[Bpm_IsEmriEtiketBaslikRenzel]
  ADD CONSTRAINT [FK_IsEmriRenzel] FOREIGN KEY ([pIsemri]) REFERENCES [GUSTO00001].[IsEmri] ([IsEmri_rowid]) ON DELETE CASCADE
GO