CREATE TABLE [GUSTO00005].[EdiAktarilanDosyalar] (
  [EdiAktarilanDosyalar_rowid] [int] IDENTITY,
  [sDosyaAdi] [varchar](50) NULL DEFAULT (''),
  [dtTarih] [smalldatetime] NULL,
  [tmSaat] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EdiAktarilanDosyalar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO