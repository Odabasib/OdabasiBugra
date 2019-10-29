CREATE TABLE [GUSTO00005].[stkhrEkAlanTarih] (
  [stkhrEkAlanTarih_rowid] [int] IDENTITY,
  [pEkAlanTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([stkhrEkAlanTarih_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EATarihSahipKey]
  ON [GUSTO00005].[stkhrEkAlanTarih] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EATarihTanimDegerKey]
  ON [GUSTO00005].[stkhrEkAlanTarih] ([pEkAlanTanimi], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO