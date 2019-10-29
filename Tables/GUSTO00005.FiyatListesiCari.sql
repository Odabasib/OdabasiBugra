CREATE TABLE [GUSTO00005].[FiyatListesiCari] (
  [FiyatListesiCari_rowid] [int] IDENTITY,
  [pFiyatListesiAd] [int] NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('C'),
  [pCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatListesiCari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariListeTurKey]
  ON [GUSTO00005].[FiyatListesiCari] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pFiyatListesiAd]
  ON [GUSTO00005].[FiyatListesiCari] ([pFiyatListesiAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO