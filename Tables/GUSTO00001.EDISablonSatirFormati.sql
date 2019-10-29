CREATE TABLE [GUSTO00001].[EDISablonSatirFormati] (
  [EDISablonSatirFormati_rowid] [int] IDENTITY,
  [pSatir] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [cBosluk] [char](1) NULL DEFAULT (' '),
  [cHiza] [char](1) NULL DEFAULT (' '),
  [nGenislik] [int] NULL DEFAULT (0),
  [cAlanTipi] [char](1) NULL DEFAULT (' '),
  [sFormat] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDISablonSatirFormati_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pSatir]
  ON [GUSTO00001].[EDISablonSatirFormati] ([pSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO