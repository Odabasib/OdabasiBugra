CREATE TABLE [GUSTO00005].[KaliteKPersonelBilgi] (
  [KaliteKPersonelBilgi_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [ldDeger] [decimal](22, 2) NULL DEFAULT (0),
  [pPersonelBilgiTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteKPersonelBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NotKey]
  ON [GUSTO00005].[KaliteKPersonelBilgi] ([pOwnerID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelBilgiTanimi]
  ON [GUSTO00005].[KaliteKPersonelBilgi] ([pPersonelBilgiTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO