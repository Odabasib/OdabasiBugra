CREATE TABLE [GUSTO00003].[IsMerkMlytDagitimSekli] (
  [IsMerkMlytDagitimSekli_rowid] [int] IDENTITY,
  [pKart] [int] NOT NULL DEFAULT (0),
  [pKodTanimi] [int] NOT NULL DEFAULT (0),
  [cKartTuru] [char](1) NOT NULL DEFAULT ('M'),
  [nDagitimKriteri] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsMerkMlytDagitimSekli_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IsMerkTanimKey]
  ON [GUSTO00003].[IsMerkMlytDagitimSekli] ([pKart], [pKodTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO