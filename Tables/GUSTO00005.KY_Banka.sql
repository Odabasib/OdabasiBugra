﻿CREATE TABLE [GUSTO00005].[KY_Banka] (
  [KY_Banka_rowid] [int] IDENTITY,
  [pKodAd] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [nYetki1] [int] NOT NULL DEFAULT (0),
  [nYetki2] [int] NULL DEFAULT (0),
  [nYetki3] [int] NULL DEFAULT (0),
  [nYetki4] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KY_Banka_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KartYetki]
  ON [GUSTO00005].[KY_Banka] ([pKodAd], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO