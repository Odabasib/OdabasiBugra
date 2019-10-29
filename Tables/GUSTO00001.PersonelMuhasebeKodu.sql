CREATE TABLE [GUSTO00001].[PersonelMuhasebeKodu] (
  [PersonelMuhasebeKodu_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelTanimKey]
  ON [GUSTO00001].[PersonelMuhasebeKodu] ([pPersonelKodu], [nMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO