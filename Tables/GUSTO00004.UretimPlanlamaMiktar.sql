CREATE TABLE [GUSTO00004].[UretimPlanlamaMiktar] (
  [UretimPlanlamaMiktar_rowid] [int] IDENTITY,
  [pPlanlama] [int] NOT NULL DEFAULT (0),
  [nDonemSirasi] [smallint] NOT NULL DEFAULT (0),
  [nRevizeSirasi] [smallint] NOT NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UretimPlanlamaMiktar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [RevizePlanlamaDonemKey]
  ON [GUSTO00004].[UretimPlanlamaMiktar] ([pPlanlama], [nRevizeSirasi], [nDonemSirasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO