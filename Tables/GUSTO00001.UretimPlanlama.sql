CREATE TABLE [GUSTO00001].[UretimPlanlama] (
  [UretimPlanlama_rowid] [int] IDENTITY,
  [pUrun] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [pPlanlamaDonem] [int] NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UretimPlanlama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [DonemTurUrunKey]
  ON [GUSTO00001].[UretimPlanlama] ([pUrun], [pPlanlamaDonem], [pDonem], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO