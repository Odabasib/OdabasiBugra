CREATE TABLE [GUSTO00004].[UretimPlanlamaRevize] (
  [UretimPlanlamaRevize_rowid] [int] IDENTITY,
  [sAciklama] [varchar](80) NULL DEFAULT (''),
  [dtRevizeTarihi] [smalldatetime] NULL,
  [nRevizeSirasi] [smallint] NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [cDegisim] [char](1) NULL DEFAULT (' '),
  [ldRevizeOrani] [decimal](22, 2) NULL DEFAULT (2),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UretimPlanlamaRevize_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [DonemTurSiraKey]
  ON [GUSTO00004].[UretimPlanlamaRevize] ([pDonem], [nRevizeSirasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO