CREATE TABLE [GUSTO00003].[IsEmriFireOlanMalzemeler] (
  [IsEmriFireOlanMalzemeler_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pStokHareketSatir] [int] NOT NULL DEFAULT (0),
  [sKonumKodu] [varchar](20) NULL DEFAULT (''),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pUrunKodu] [int] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriFireOlanMalzemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmriFireOlanMalzemeler] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00003].[IsEmriFireOlanMalzemeler] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pStokHareketSatir]
  ON [GUSTO00003].[IsEmriFireOlanMalzemeler] ([pStokHareketSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO