CREATE TABLE [GUSTO00005].[GelenGidenPersoneller] (
  [GelenGidenPersoneller_rowid] [int] IDENTITY,
  [nGelenGiden] [smallint] NULL DEFAULT (0),
  [pGelenGidenEvrak] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pOrganizasyon] [int] NULL DEFAULT (0),
  [bOrganizasyon] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelenGidenPersoneller_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO