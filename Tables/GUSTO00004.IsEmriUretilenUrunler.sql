CREATE TABLE [GUSTO00004].[IsEmriUretilenUrunler] (
  [IsEmriUretilenUrunler_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pStokHareketSatir] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [ldFireMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  PRIMARY KEY CLUSTERED ([IsEmriUretilenUrunler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriUretilenUrunler] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00004].[IsEmriUretilenUrunler] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pStokHareketSatir]
  ON [GUSTO00004].[IsEmriUretilenUrunler] ([pStokHareketSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO