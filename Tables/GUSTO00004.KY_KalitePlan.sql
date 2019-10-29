CREATE TABLE [GUSTO00004].[KY_KalitePlan] (
  [KY_KalitePlan_rowid] [int] IDENTITY,
  [pKodAd] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [nYetki1] [int] NOT NULL DEFAULT (0),
  [nYetki2] [int] NULL DEFAULT (0),
  [nYetki3] [int] NULL DEFAULT (0),
  [nYetki4] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KY_KalitePlan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KartYetki]
  ON [GUSTO00004].[KY_KalitePlan] ([pKodAd], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO