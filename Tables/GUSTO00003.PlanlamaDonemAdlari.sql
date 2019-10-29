CREATE TABLE [GUSTO00003].[PlanlamaDonemAdlari] (
  [PlanlamaDonemAdlari_rowid] [int] IDENTITY,
  [pPlanlamaDonem] [int] NULL DEFAULT (0),
  [nDonemSirasi] [smallint] NULL DEFAULT (0),
  [sAd] [varchar](40) NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PlanlamaDonemAdlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TurSiraKey]
  ON [GUSTO00003].[PlanlamaDonemAdlari] ([pPlanlamaDonem], [nDonemSirasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO