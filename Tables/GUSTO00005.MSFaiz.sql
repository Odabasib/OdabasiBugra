CREATE TABLE [GUSTO00005].[MSFaiz] (
  [MSFaiz_rowid] [int] IDENTITY,
  [dFaiz] [decimal](22, 2) NULL DEFAULT (0),
  [sPeriyod] [char](1) NULL DEFAULT (' '),
  [nPeriyodOzel] [smallint] NULL DEFAULT (0),
  [dtFaizBaslangic] [smalldatetime] NULL,
  [dtFaizBitis] [smalldatetime] NULL,
  [ldFaizYPTutari] [decimal](22, 2) NULL DEFAULT (0),
  [cFaizTuru] [char](1) NULL DEFAULT (' '),
  [cFaizIslem] [char](1) NULL DEFAULT (' '),
  [pHareketID] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSFaiz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHareketIDKey]
  ON [GUSTO00005].[MSFaiz] ([pHareketID], [dtFaizBaslangic])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO