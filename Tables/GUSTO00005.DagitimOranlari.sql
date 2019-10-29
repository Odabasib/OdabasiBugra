CREATE TABLE [GUSTO00005].[DagitimOranlari] (
  [DagitimOranlari_rowid] [int] IDENTITY,
  [cTur] [char](1) NOT NULL DEFAULT ('E'),
  [pIsMekeziDagitim] [int] NULL DEFAULT (0),
  [pEndirekGiderHesabi] [int] NOT NULL DEFAULT (0),
  [ldDagitimOrani] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldDagitimTutari] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DagitimOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsMerkeziDagitim]
  ON [GUSTO00005].[DagitimOranlari] ([pIsMekeziDagitim], [cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO