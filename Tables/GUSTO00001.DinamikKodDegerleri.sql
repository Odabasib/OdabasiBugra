CREATE TABLE [GUSTO00001].[DinamikKodDegerleri] (
  [DinamikKodDegerleri_rowid] [int] IDENTITY,
  [pTanim] [int] NULL DEFAULT (0),
  [sDeger] [varchar](100) NULL DEFAULT (''),
  [cKisaDeger] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DinamikKodDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TanimDegerKey]
  ON [GUSTO00001].[DinamikKodDegerleri] ([pTanim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO