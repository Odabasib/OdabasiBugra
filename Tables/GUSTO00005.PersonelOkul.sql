CREATE TABLE [GUSTO00005].[PersonelOkul] (
  [PersonelOkul_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [pOkulBolum] [int] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [bHalaOkuyorMu] [bit] NULL DEFAULT (0),
  [sMezuniyetNotu] [varchar](20) NULL DEFAULT (''),
  [sDerecesi] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelOkul_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelOkulKey]
  ON [GUSTO00005].[PersonelOkul] ([pPersonelKodu], [dtBaslamaTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO