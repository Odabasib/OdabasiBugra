CREATE TABLE [GUSTO00003].[MaliTabloFormulEleman] (
  [MaliTabloFormulEleman_rowid] [int] IDENTITY,
  [pMaliTabloKod] [int] NULL DEFAULT (0),
  [fSira] [real] NULL DEFAULT (0.000000),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [cTur] [char](1) NULL DEFAULT (' '),
  [cBaglantiTuru] [char](1) NULL DEFAULT (' '),
  [pNesneAddr] [int] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizDegeri] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloFormulEleman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMaliTabloKodID]
  ON [GUSTO00003].[MaliTabloFormulEleman] ([pMaliTabloKod], [fSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO