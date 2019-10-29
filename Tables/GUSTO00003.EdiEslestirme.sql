CREATE TABLE [GUSTO00003].[EdiEslestirme] (
  [EdiEslestirme_rowid] [int] IDENTITY,
  [nEdiAlani] [smallint] NULL DEFAULT (0),
  [sHareket] [varchar](50) NULL DEFAULT (''),
  [sAdi] [varchar](50) NULL DEFAULT (''),
  [sType] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EdiEslestirme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO