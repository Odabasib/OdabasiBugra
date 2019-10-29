CREATE TABLE [GUSTO00003].[KY_CekSenet] (
  [KY_CekSenet_rowid] [int] IDENTITY,
  [pKodAd] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [nYetki1] [int] NOT NULL DEFAULT (0),
  [nYetki2] [int] NULL DEFAULT (0),
  [nYetki3] [int] NULL DEFAULT (0),
  [nYetki4] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KY_CekSenet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KartYetki]
  ON [GUSTO00003].[KY_CekSenet] ([pKodAd], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO