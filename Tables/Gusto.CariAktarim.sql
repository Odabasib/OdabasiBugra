CREATE TABLE [Gusto].[CariAktarim] (
  [CariKod] [varchar](50) NULL,
  [CariAd] [varchar](150) NULL,
  [VergiDairesi] [varchar](50) NULL,
  [VergiNo] [varchar](50) NULL,
  [TcKimlikNo] [varchar](50) NULL,
  [Adres] [varchar](max) NULL,
  [Ilce] [varchar](50) NULL,
  [Il] [varchar](50) NULL,
  [Ulke] [varchar](50) NULL,
  [Telefon1] [varchar](50) NULL,
  [Telefon2] [varchar](50) NULL,
  [Telefon3] [varchar](50) NULL,
  [Faks] [varchar](50) NULL,
  [Mail] [varchar](100) NULL,
  [Vade] [int] NULL,
  [Sektor] [varchar](5) NULL,
  [Doviz] [varchar](5) NULL,
  [PostaKodu] [varchar](20) NULL,
  [Web] [varchar](100) NULL,
  [NakliyeSek] [varchar](100) NULL,
  [ODemeSekSek] [varchar](100) NULL,
  [Kisi] [varchar](100) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO