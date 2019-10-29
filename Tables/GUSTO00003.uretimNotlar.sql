CREATE TABLE [GUSTO00003].[uretimNotlar] (
  [uretimNotlar_rowid] [int] IDENTITY,
  [sMetin] [text] NULL DEFAULT (''),
  [pNotAdiTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([uretimNotlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NotKey]
  ON [GUSTO00003].[uretimNotlar] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pNotAdiTanimi]
  ON [GUSTO00003].[uretimNotlar] ([pNotAdiTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO