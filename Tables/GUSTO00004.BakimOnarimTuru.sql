CREATE TABLE [GUSTO00004].[BakimOnarimTuru] (
  [BakimOnarimTuru_rowid] [int] IDENTITY,
  [cTanim] [char](1) NOT NULL DEFAULT ('B'),
  [cKartTuru] [char](1) NOT NULL DEFAULT (' '),
  [sTurKodu] [varchar](10) NULL DEFAULT (''),
  [sTurAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [sUstKod] [varchar](10) NULL DEFAULT (''),
  [pIsMerkezi] [int] NULL DEFAULT (0),
  [pHizmet] [int] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BakimOnarimTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO