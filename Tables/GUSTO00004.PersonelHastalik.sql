CREATE TABLE [GUSTO00004].[PersonelHastalik] (
  [PersonelHastalik_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [pHastalik] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelHastalik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersTarihKey]
  ON [GUSTO00004].[PersonelHastalik] ([pPersonelKodu], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO