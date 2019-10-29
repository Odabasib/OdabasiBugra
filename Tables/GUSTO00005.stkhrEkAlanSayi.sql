CREATE TABLE [GUSTO00005].[stkhrEkAlanSayi] (
  [stkhrEkAlanSayi_rowid] [int] IDENTITY,
  [pEkAlanTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [ldSayi] [decimal](22, 6) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([stkhrEkAlanSayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EASayiSahipKey]
  ON [GUSTO00005].[stkhrEkAlanSayi] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EASayiTanimDegerKey]
  ON [GUSTO00005].[stkhrEkAlanSayi] ([pEkAlanTanimi], [ldSayi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO