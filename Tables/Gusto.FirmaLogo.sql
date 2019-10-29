CREATE TABLE [Gusto].[FirmaLogo] (
  [FirmaLogo_rowid] [int] IDENTITY,
  [pFirma] [int] NOT NULL DEFAULT (0),
  [sDosyaUzantisi] [varchar](10) NOT NULL DEFAULT (''),
  [nDosyaUzunlugu] [int] NOT NULL DEFAULT (0),
  [blobFotograf] [image] NOT NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([FirmaLogo_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pFirma]
  ON [Gusto].[FirmaLogo] ([pFirma])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO