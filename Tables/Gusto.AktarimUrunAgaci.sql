CREATE TABLE [Gusto].[AktarimUrunAgaci] (
  [UrunStokKodu] [nvarchar](50) NULL,
  [UrunStokAdi] [nvarchar](max) NULL,
  [UrunIzlemeKodu] [nvarchar](max) NULL,
  [Ebat] [nvarchar](10) NULL,
  [MalzemeStokKodu] [nvarchar](50) NULL,
  [MalzemeStokAdi] [nvarchar](max) NULL,
  [MalzemeIzlemeKodu] [nvarchar](50) NULL,
  [MalzemeIzlemeAdi] [nvarchar](max) NULL,
  [Miktar] [decimal](22, 6) NULL,
  [Birim] [nvarchar](10) NULL,
  [Kacli] [nvarchar](max) NULL,
  [pUrunStok] [int] NULL,
  [pUrunIzleme] [int] NULL,
  [pMalzemeStok] [int] NULL,
  [pMalzemeIzleme] [int] NULL,
  [Aktarildi] [int] NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO