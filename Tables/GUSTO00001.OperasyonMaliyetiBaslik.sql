CREATE TABLE [GUSTO00001].[OperasyonMaliyetiBaslik] (
  [OperasyonMaliyetiBaslik_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pIslemID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonMaliyetiBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00001].[OperasyonMaliyetiBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00001].[OperasyonMaliyetiBaslik] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO