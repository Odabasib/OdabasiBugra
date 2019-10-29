CREATE TABLE [Gusto].[Satis_UstYonetimOnay] (
  [Rowid] [int] IDENTITY,
  [pVerilenTeklif] [int] NOT NULL,
  [pOnayaGonderenKullanici] [int] NOT NULL,
  [pOnayaGonderilenKullanici] [int] NOT NULL,
  [dtGonderimTarihi] [smalldatetime] NOT NULL,
  [dtOnayTarihi] [smalldatetime] NULL,
  [dtRedTarihi] [smalldatetime] NULL,
  [bOnaylandi] [smallint] NULL,
  [bReddedildi] [smallint] NULL,
  [sRedAciklama] [varchar](255) NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO