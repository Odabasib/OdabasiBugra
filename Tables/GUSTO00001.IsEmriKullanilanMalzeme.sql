CREATE TABLE [GUSTO00001].[IsEmriKullanilanMalzeme] (
  [IsEmriKullanilanMalzeme_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pStokHareketSatir] [int] NOT NULL DEFAULT (0),
  [sKonumKodu] [varchar](20) NULL DEFAULT (''),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pUrunKodu] [int] NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriKullanilanMalzeme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[IsEmriKullanilanMalzeme] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00001].[IsEmriKullanilanMalzeme] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pStokHareketSatir]
  ON [GUSTO00001].[IsEmriKullanilanMalzeme] ([pStokHareketSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO