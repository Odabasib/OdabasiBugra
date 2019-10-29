CREATE TABLE [GUSTO00003].[ButcePlanlamaDonemleri] (
  [ButcePlanlamaDonemleri_rowid] [int] IDENTITY,
  [sDonemAdi] [varchar](50) NULL DEFAULT (''),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [cDetayTipi] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([ButcePlanlamaDonemleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO