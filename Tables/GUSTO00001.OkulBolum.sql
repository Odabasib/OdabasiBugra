CREATE TABLE [GUSTO00001].[OkulBolum] (
  [OkulBolum_rowid] [int] IDENTITY,
  [pOkulId] [int] NOT NULL DEFAULT (0),
  [sFakulteYukokul] [varchar](60) NULL DEFAULT (''),
  [sBolum] [varchar](60) NOT NULL DEFAULT (''),
  [sEgitimSure] [varchar](10) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OkulBolum_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOkulId]
  ON [GUSTO00001].[OkulBolum] ([pOkulId], [sFakulteYukokul], [sBolum])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO