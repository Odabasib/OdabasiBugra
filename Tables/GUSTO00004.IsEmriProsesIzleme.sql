CREATE TABLE [GUSTO00004].[IsEmriProsesIzleme] (
  [IsEmriProsesIzleme_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsEmriProsesIzleme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriProsesIzleme] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00004].[IsEmriProsesIzleme] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00004].[IsEmriProsesIzleme] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO