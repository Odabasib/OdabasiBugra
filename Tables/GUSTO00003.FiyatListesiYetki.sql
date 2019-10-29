CREATE TABLE [GUSTO00003].[FiyatListesiYetki] (
  [FiyatListesiYetki_rowid] [int] IDENTITY,
  [pFiyatListeAd] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatListesiYetki_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pFiyatListeAd]
  ON [GUSTO00003].[FiyatListesiYetki] ([pFiyatListeAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [GUSTO00003].[FiyatListesiYetki] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO