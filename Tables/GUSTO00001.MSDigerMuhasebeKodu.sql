CREATE TABLE [GUSTO00001].[MSDigerMuhasebeKodu] (
  [MSDigerMuhasebeKodu_rowid] [int] IDENTITY,
  [pMSDigerKodu] [int] NULL DEFAULT (0),
  [pMSDigerMuhasebeKodu] [int] NULL DEFAULT (0),
  [nMSDigerMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSDigerMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MSDMuhKodTanimKey]
  ON [GUSTO00001].[MSDigerMuhasebeKodu] ([pMSDigerKodu], [nMSDigerMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO