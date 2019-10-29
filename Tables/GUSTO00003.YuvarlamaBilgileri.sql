CREATE TABLE [GUSTO00003].[YuvarlamaBilgileri] (
  [YuvarlamaBilgileri_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [cTip] [char](1) NULL DEFAULT (' '),
  [ldYuvarlamaUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [nSira] [tinyint] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YuvarlamaBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyKey]
  ON [GUSTO00003].[YuvarlamaBilgileri] ([pPersonel], [pIkramiyeTanimi], [pIsyeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO