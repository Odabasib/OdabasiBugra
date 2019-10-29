CREATE TABLE [GUSTO00005].[MSMuhasebeKodu] (
  [MSMuhasebeKodu_rowid] [int] IDENTITY,
  [pMusteriSaticiKodu] [int] NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [nMSMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MukKodTanimKey]
  ON [GUSTO00005].[MSMuhasebeKodu] ([pMusteriSaticiKodu], [nMSMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO