CREATE TABLE [GUSTO00001].[SabitKMuhasebeKodu] (
  [SabitKMuhasebeKodu_rowid] [int] IDENTITY,
  [cSabitKTur] [char](1) NULL DEFAULT (' '),
  [pSabitKKodu] [int] NULL DEFAULT (0),
  [pSabitKMuhasebeKodu] [int] NULL DEFAULT (0),
  [nSabitKMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKMuhasebeKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MuhasebeKodu]
  ON [GUSTO00001].[SabitKMuhasebeKodu] ([pSabitKMuhasebeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MuhKodTanimKey]
  ON [GUSTO00001].[SabitKMuhasebeKodu] ([pSabitKKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO