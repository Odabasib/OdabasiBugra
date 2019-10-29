CREATE TABLE [GUSTO00001].[UretimMuhasebeKodu] (
  [UretimMuhasebeKodu_rowid] [int] IDENTITY,
  [cKartTuru] [char](1) NOT NULL DEFAULT (' '),
  [pKart] [int] NOT NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nMuhasebeKoduTanimi] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UretimMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MuhKodTanimKey]
  ON [GUSTO00001].[UretimMuhasebeKodu] ([pKart], [nMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO