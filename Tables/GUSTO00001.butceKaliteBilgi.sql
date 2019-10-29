CREATE TABLE [GUSTO00001].[butceKaliteBilgi] (
  [butceKaliteBilgi_rowid] [int] IDENTITY,
  [cBelgeTuru] [char](1) NULL DEFAULT (' '),
  [pBelge] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([butceKaliteBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO