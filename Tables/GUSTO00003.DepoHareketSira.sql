CREATE TABLE [GUSTO00003].[DepoHareketSira] (
  [DepoHareketSira_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [nGirisSira] [smallint] NULL DEFAULT (0),
  [nCikisSira] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoHareketSira_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TarihKey]
  ON [GUSTO00003].[DepoHareketSira] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO