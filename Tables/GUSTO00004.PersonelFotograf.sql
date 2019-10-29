CREATE TABLE [GUSTO00004].[PersonelFotograf] (
  [PersonelFotograf_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [sDosyaUzantisi] [varchar](10) NOT NULL DEFAULT (''),
  [nDosyaUzunlugu] [int] NOT NULL DEFAULT (0),
  [blobFotograf] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelFotograf_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pPersonelKodu]
  ON [GUSTO00004].[PersonelFotograf] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO