CREATE TABLE [GUSTO00005].[PersonelBanka] (
  [PersonelBanka_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [sBankaKodu] [varchar](20) NULL DEFAULT (''),
  [sSubeKodu] [varchar](20) NULL DEFAULT (''),
  [sHesapNo] [varchar](20) NULL DEFAULT (''),
  [sHesapDovizi] [varchar](6) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelBanka_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PBAN_PersKey]
  ON [GUSTO00005].[PersonelBanka] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO