CREATE TABLE [GUSTO00004].[IsEmriBirlBaglantiTabl] (
  [IsEmriBirlBaglantiTabl_rowid] [int] IDENTITY,
  [pBirlesmisIsEmri] [int] NOT NULL DEFAULT (0),
  [sBirlesmisIsEmriSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nBirlesmisIsEmriNo] [int] NOT NULL DEFAULT (0),
  [pUyeIsEmri] [int] NOT NULL DEFAULT (0),
  [sUyeIsEmriSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nUyeIsEmriNo] [int] NOT NULL DEFAULT (0),
  [cRezervasyonTuru] [char](1) NOT NULL DEFAULT (' '),
  [pRezervasyon] [int] NOT NULL DEFAULT (0),
  [pBirlesmisRzvYeriBelge] [int] NOT NULL DEFAULT (0),
  [pUyeRzvYeriBelge] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriBirlBaglantiTabl_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BirlesmisUyeIsemriKey]
  ON [GUSTO00004].[IsEmriBirlBaglantiTabl] ([pBirlesmisIsEmri], [pUyeIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BirlesmisUyeIsemriRzvYeriKey]
  ON [GUSTO00004].[IsEmriBirlBaglantiTabl] ([pBirlesmisIsEmri], [pUyeIsEmri], [pRezervasyon], [pBirlesmisRzvYeriBelge], [pUyeRzvYeriBelge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBirlesmisIsEmri]
  ON [GUSTO00004].[IsEmriBirlBaglantiTabl] ([pBirlesmisIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUyeIsEmri]
  ON [GUSTO00004].[IsEmriBirlBaglantiTabl] ([pUyeIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO