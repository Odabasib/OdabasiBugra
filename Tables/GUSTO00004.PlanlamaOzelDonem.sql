CREATE TABLE [GUSTO00004].[PlanlamaOzelDonem] (
  [PlanlamaOzelDonem_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [nTur] [smallint] NULL DEFAULT (0),
  [nSure] [smallint] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PlanlamaOzelDonem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO