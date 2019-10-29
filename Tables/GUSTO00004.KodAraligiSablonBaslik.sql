CREATE TABLE [GUSTO00004].[KodAraligiSablonBaslik] (
  [KodAraligiSablonBaslik_rowid] [int] IDENTITY,
  [sSablonAdi] [varchar](50) NULL DEFAULT (''),
  [nModulNo] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KodAraligiSablonBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sSablonAdi_nModulNo]
  ON [GUSTO00004].[KodAraligiSablonBaslik] ([sSablonAdi], [nModulNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO