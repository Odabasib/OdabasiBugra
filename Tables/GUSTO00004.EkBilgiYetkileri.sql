CREATE TABLE [GUSTO00004].[EkBilgiYetkileri] (
  [EkBilgiYetkileri_rowid] [int] IDENTITY,
  [cTanimTuru] [char](1) NULL DEFAULT (' '),
  [pEkBilgiTanimi] [int] NULL DEFAULT (0),
  [pYetkiGrubu] [int] NULL DEFAULT (0),
  [cDurum] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkBilgiYetkileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pYetkiGrubu]
  ON [GUSTO00004].[EkBilgiYetkileri] ([pYetkiGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TanimYetki]
  ON [GUSTO00004].[EkBilgiYetkileri] ([pEkBilgiTanimi], [pYetkiGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO