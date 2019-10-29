CREATE TABLE [GUSTO00004].[PersonelAnketCevap] (
  [PersonelAnketCevap_rowid] [int] IDENTITY,
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [pBasvuru] [int] NULL DEFAULT (0),
  [pAnket] [int] NOT NULL DEFAULT (0),
  [pSoru] [int] NOT NULL DEFAULT (0),
  [pSoruSecenegi] [int] NULL DEFAULT (0),
  [sDigerCevap] [varchar](250) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT ('P'),
  [dtCevaplamaTarihi] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelAnketCevap_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BasvuruCevapKey]
  ON [GUSTO00004].[PersonelAnketCevap] ([pBasvuru], [pAnket], [pSoru], [pSoruSecenegi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelCevapKey]
  ON [GUSTO00004].[PersonelAnketCevap] ([pHesapKodu], [pAnket], [pSoru], [pSoruSecenegi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO