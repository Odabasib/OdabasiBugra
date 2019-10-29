CREATE TABLE [GUSTO00004].[SatisPlaniBaslik] (
  [SatisPlaniBaslik_rowid] [int] IDENTITY,
  [pDonem] [int] NULL DEFAULT (0),
  [sPlanlamaAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [dtPlanlamaTarihi] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SatisPlaniBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ButcePlanlamiDonemi]
  ON [GUSTO00004].[SatisPlaniBaslik] ([dtPlanlamaTarihi], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO