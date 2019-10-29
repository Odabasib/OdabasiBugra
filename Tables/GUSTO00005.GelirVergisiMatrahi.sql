CREATE TABLE [GUSTO00005].[GelirVergisiMatrahi] (
  [GelirVergisiMatrahi_rowid] [int] IDENTITY,
  [cTip] [char](1) NULL DEFAULT (' '),
  [pPersonel] [int] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [ldAsgariGecimIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldAsilAsgariGecimIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldAsgariGecimIndirimOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldHazineIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirikenGVMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [pOrganizasyonKadro] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelirVergisiMatrahi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyKey]
  ON [GUSTO00005].[GelirVergisiMatrahi] ([pPersonel], [nYil], [nAy], [pIkramiyeTanimi], [pIsyeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TipPersonelYilAyKey]
  ON [GUSTO00005].[GelirVergisiMatrahi] ([pPersonel], [nYil], [nAy], [pIkramiyeTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO