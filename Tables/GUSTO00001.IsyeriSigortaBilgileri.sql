CREATE TABLE [GUSTO00001].[IsyeriSigortaBilgileri] (
  [IsyeriSigortaBilgileri_rowid] [int] IDENTITY,
  [pIsyeri] [int] NOT NULL DEFAULT (0),
  [pSigortaSirketi] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtBaslangicTarihi] [smalldatetime] NOT NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [sOKESNo] [varchar](30) NULL DEFAULT (''),
  [sBESIBAN] [varchar](30) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsyeriSigortaBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsyeri_AktifKey]
  ON [GUSTO00001].[IsyeriSigortaBilgileri] ([pIsyeri], [dtBaslangicTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSigortaSirketi]
  ON [GUSTO00001].[IsyeriSigortaBilgileri] ([pSigortaSirketi], [dtBaslangicTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO