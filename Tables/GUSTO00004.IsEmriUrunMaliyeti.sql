CREATE TABLE [GUSTO00004].[IsEmriUrunMaliyeti] (
  [IsEmriUrunMaliyeti_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pIsEmriUretilenUrun] [int] NOT NULL DEFAULT (0),
  [pIsEmriGercekMaliyet] [int] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  [pIsMerkezi] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriUrunMaliyeti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00004].[IsEmriUrunMaliyeti] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriGercekMaliyet]
  ON [GUSTO00004].[IsEmriUrunMaliyeti] ([pIsEmriGercekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriUretilenUrun]
  ON [GUSTO00004].[IsEmriUrunMaliyeti] ([pIsEmriUretilenUrun])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsMerkezi]
  ON [GUSTO00004].[IsEmriUrunMaliyeti] ([pIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00004].[IsEmriUrunMaliyeti] ([pStokKodu], [cStokHizmet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO