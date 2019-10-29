CREATE TABLE [GUSTO00004].[FinansFaiz] (
  [FinansFaiz_rowid] [int] IDENTITY,
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [dFaizOrani] [decimal](22, 2) NULL DEFAULT (0),
  [cFaizDonem] [char](1) NULL DEFAULT (' '),
  [dtFaizBaslangic] [smalldatetime] NULL,
  [dtFaizBitis] [smalldatetime] NULL,
  [cTLDoviz] [char](1) NULL DEFAULT (' '),
  [cFaizTuru] [char](1) NULL DEFAULT (' '),
  [cOzelFaizIslem] [char](1) NULL DEFAULT (' '),
  [lOzelFaizGunSayisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FinansFaiz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketFaizKey]
  ON [GUSTO00004].[FinansFaiz] ([nHareketTuru], [pHareket], [dtFaizBaslangic])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO