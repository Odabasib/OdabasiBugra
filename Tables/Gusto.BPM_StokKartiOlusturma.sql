CREATE TABLE [Gusto].[BPM_StokKartiOlusturma] (
  [Rowid] [int] IDENTITY,
  [pFaaliyetID] [int] NULL,
  [sStokKodu] [varchar](61) NULL,
  [sStokAdi] [varchar](100) NULL,
  [StokKodu_Rowid] [int] NULL,
  [dtOlusturma] [datetime] NULL,
  [pOluşturanKullanici] [int] NULL,
  [pFiyatListesineEklendi] [char](1) NULL,
  [pFiyatListesiSatir] [int] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO