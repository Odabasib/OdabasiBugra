CREATE TABLE [GUSTO00005].[PerformansUygulananlar] (
  [PerformansUygulananlar_rowid] [int] IDENTITY,
  [pTanim] [int] NOT NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [ldPuan] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansUygulananlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pTanim]
  ON [GUSTO00005].[PerformansUygulananlar] ([pTanim], [pDonem], [pOrganizasyon], [pPersonel], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO