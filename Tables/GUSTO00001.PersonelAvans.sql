CREATE TABLE [GUSTO00001].[PersonelAvans] (
  [PersonelAvans_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
  [ldAvansTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldhdAvansTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldsdAvansTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [nAvansTuru] [int] NOT NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [pAvansTanimi] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelAvans_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [PersonelYilAyKey]
  ON [GUSTO00001].[PersonelAvans] ([pPersonel], [nYil], [nAy], [pIkramiyeTanimi], [pIsyeri], [nAvansTuru], [pAvansTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YilAyKey]
  ON [GUSTO00001].[PersonelAvans] ([nYil], [nAy], [pIkramiyeTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO