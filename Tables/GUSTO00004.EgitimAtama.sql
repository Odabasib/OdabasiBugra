CREATE TABLE [GUSTO00004].[EgitimAtama] (
  [EgitimAtama_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pPlan] [int] NOT NULL DEFAULT (0),
  [sBirimAdi] [varchar](50) NULL DEFAULT (''),
  [sGorevi] [varchar](50) NULL DEFAULT (''),
  [dKatilimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nKatilimSureBirim] [smallint] NULL DEFAULT (0),
  [dKatilimYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [dTalepPuani] [decimal](22, 2) NULL DEFAULT (0),
  [dKanaatPuani] [decimal](22, 2) NULL DEFAULT (0),
  [dAnketPuani] [decimal](22, 2) NULL DEFAULT (0),
  [dEgitimciAnketPuani] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [tmTarih] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EgitimAtama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarihpPlanpPersonel]
  ON [GUSTO00004].[EgitimAtama] ([dtTarih], [pPlan], [pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonel]
  ON [GUSTO00004].[EgitimAtama] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPlan]
  ON [GUSTO00004].[EgitimAtama] ([pPlan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO