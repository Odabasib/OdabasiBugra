CREATE TABLE [GUSTO00003].[IsBasvurusuFotograf] (
  [IsBasvurusuFotograf_rowid] [int] IDENTITY,
  [pIsBasvuruFormu] [int] NOT NULL DEFAULT (0),
  [sDosyaUzantisi] [varchar](10) NOT NULL DEFAULT (''),
  [nDosyaUzunlugu] [int] NOT NULL DEFAULT (0),
  [blobFotograf] [image] NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuFotograf_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIsBasvuruFormu]
  ON [GUSTO00003].[IsBasvurusuFotograf] ([pIsBasvuruFormu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO