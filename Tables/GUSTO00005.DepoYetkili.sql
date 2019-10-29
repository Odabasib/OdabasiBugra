CREATE TABLE [GUSTO00005].[DepoYetkili] (
  [DepoYetkili_rowid] [int] IDENTITY,
  [pDepoKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoYetkili_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDepoKodu]
  ON [GUSTO00005].[DepoYetkili] ([pDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00005].[DepoYetkili] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO