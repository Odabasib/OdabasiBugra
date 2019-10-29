CREATE TABLE [GUSTO00004].[DepoYetkili] (
  [DepoYetkili_rowid] [int] IDENTITY,
  [pDepoKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoYetkili_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDepoKodu]
  ON [GUSTO00004].[DepoYetkili] ([pDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00004].[DepoYetkili] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO