CREATE TABLE [GUSTO00001].[StokMaliyetDonemi] (
  [StokMaliyetDonemi_rowid] [int] IDENTITY,
  [sDonemAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [dtBitisTarihi] [smalldatetime] NULL,
  [cTur] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([StokMaliyetDonemi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO