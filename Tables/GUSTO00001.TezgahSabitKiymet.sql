CREATE TABLE [GUSTO00001].[TezgahSabitKiymet] (
  [TezgahSabitKiymet_rowid] [int] IDENTITY,
  [pTezgahKodu] [int] NOT NULL DEFAULT (0),
  [pSabitKiymetKodu] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TezgahSabitKiymet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pSabitKiymetKodu]
  ON [GUSTO00001].[TezgahSabitKiymet] ([pSabitKiymetKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTezgahKodu]
  ON [GUSTO00001].[TezgahSabitKiymet] ([pTezgahKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO