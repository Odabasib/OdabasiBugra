CREATE TABLE [GUSTO00003].[OrganizasyonMuhasebeKodu] (
  [OrganizasyonMuhasebeKodu_rowid] [int] IDENTITY,
  [pBolumKodu] [int] NOT NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OrganizasyonMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OMK_BolumTanimKey]
  ON [GUSTO00003].[OrganizasyonMuhasebeKodu] ([pBolumKodu], [nMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO