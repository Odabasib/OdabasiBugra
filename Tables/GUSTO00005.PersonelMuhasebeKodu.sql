CREATE TABLE [GUSTO00005].[PersonelMuhasebeKodu] (
  [PersonelMuhasebeKodu_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelTanimKey]
  ON [GUSTO00005].[PersonelMuhasebeKodu] ([pPersonelKodu], [nMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO