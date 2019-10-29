CREATE TABLE [GUSTO00003].[FAKesintiSablonu] (
  [FAKesintiSablonu_rowid] [int] IDENTITY,
  [sSablonAdi] [varchar](30) NULL DEFAULT (''),
  [sSablonAciklama] [varchar](60) NULL DEFAULT (''),
  [pFaturaSerisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FAKesintiSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sSablonAdi]
  ON [GUSTO00003].[FAKesintiSablonu] ([sSablonAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO