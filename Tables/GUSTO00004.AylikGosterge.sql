CREATE TABLE [GUSTO00004].[AylikGosterge] (
  [AylikGosterge_rowid] [int] IDENTITY,
  [dtBastar] [smalldatetime] NOT NULL,
  [nDerece] [int] NOT NULL DEFAULT (0),
  [nKademe] [int] NOT NULL DEFAULT (0),
  [ldAylikGosterge] [decimal](22, 2) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AylikGosterge_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [AylikGostergeBastarKey]
  ON [GUSTO00004].[AylikGosterge] ([dtBastar], [nDerece], [nKademe])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO