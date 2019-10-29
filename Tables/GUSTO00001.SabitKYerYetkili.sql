CREATE TABLE [GUSTO00001].[SabitKYerYetkili] (
  [SabitKYerYetkili_rowid] [int] IDENTITY,
  [pSabitKYerKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKYerYetkili_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00001].[SabitKYerYetkili] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSabitKYerKodu]
  ON [GUSTO00001].[SabitKYerYetkili] ([pSabitKYerKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO