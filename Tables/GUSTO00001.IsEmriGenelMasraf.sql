CREATE TABLE [GUSTO00001].[IsEmriGenelMasraf] (
  [IsEmriGenelMasraf_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NULL DEFAULT (0),
  [pHizmetHareketi] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriGenelMasraf_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHizmetHareketi]
  ON [GUSTO00001].[IsEmriGenelMasraf] ([pHizmetHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[IsEmriGenelMasraf] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00001].[IsEmriGenelMasraf] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO