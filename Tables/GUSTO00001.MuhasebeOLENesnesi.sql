CREATE TABLE [GUSTO00001].[MuhasebeOLENesnesi] (
  [MuhasebeOLENesnesi_rowid] [int] IDENTITY,
  [sCaption] [varchar](30) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](255) NULL DEFAULT (''),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MuhasebeOLENesnesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OLENesnesiKey]
  ON [GUSTO00001].[MuhasebeOLENesnesi] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO